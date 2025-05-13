import requests
import psycopg2


def extract_data():
    """
    Extract data from the API Endpoint.
    """
    data = {}
    response = requests.get("https://open.er-api.com/v6/latest/RON")
    api_data = response.json()
    data["time_last_update_unix"] = api_data["time_last_update_unix"]
    data["time_next_update_unix"] = api_data["time_next_update_unix"]
    data["currency_code"] = list(api_data["rates"].keys())
    data["currency_rate"] = list(api_data["rates"].values())
    return data


def parse_data(input_data: dict, index: int):
    data = {}
    data["time_last_update_unix"] = input_data["time_last_update_unix"]
    data["time_next_update_unix"] = input_data["time_next_update_unix"]
    data["currency_code"] = input_data["currency_code"][index]
    data["currency_rate"] = input_data["currency_rate"][index]
    return data


def load_data(data: list) -> None:
    """
    Connect to database and insert data into specified table.
    """
    conn = psycopg2.connect(
        dbname="internit_db",
        user="postgres",
        password="placeholder",
        host="localhost",
        port=5432
    )

    cursor = conn.cursor()

    sql = """
        INSERT INTO raw.exchange_data (
            time_last_update_unix, time_next_update_unix, currency_code, currency_rate
        ) VALUES (
            %s, %s, %s, %s
);
    """

    cursor.execute(
        sql,
        (
            data.get("time_last_update_unix"),
            data.get("time_next_update_unix"),
            data.get("currency_code"),
            data.get("currency_rate"),
        )
    )
    conn.commit()


if __name__ =="__main__":
    api_data = extract_data()
    for index in range(len(list(api_data["currency_code"]))):
        parsed_data = parse_data(api_data, index)
        load_data(parsed_data)
