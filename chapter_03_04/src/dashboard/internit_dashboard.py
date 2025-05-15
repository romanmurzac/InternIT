import dash
import pandas as pd
import plotly.express as px

from dash import dcc, html
from dash.dependencies import Input, Output
from sqlalchemy import create_engine

DB_CONFIG = {
    "dbname": "internit_db",
    "user": "de_role",
    "password": "1234567890",
    "host": "localhost",
    "port": 5432,
}

connection_str = f'postgresql://{DB_CONFIG["user"]}:{DB_CONFIG["password"]}@{DB_CONFIG["host"]}:{DB_CONFIG["port"]}/{DB_CONFIG["dbname"]}'

engine = create_engine(connection_str)
query = "SELECT * FROM trusted.top_10_currencies"
df = pd.read_sql(query, engine)

app = dash.Dash(__name__)

app.layout = html.Div(
    [
        html.H1("InternIT Dashboard"),
        dcc.Graph(
            id="box-plot",
            figure=px.bar(
                df,
                y="sum",
                x="currency",
                title="Top 10 currencies",
                labels={"sum": "Amount [RON]", "currency": "Currency"},
            ),
        ),
    ]
)


if __name__ == "__main__":
    app.run_server(debug=True)
