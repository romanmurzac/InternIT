import psycopg2


def read_sql(file_path: str) -> str:
    """
    Read a SQL file and return the content of it.
    """
    with open(file_path, "r") as file:
        query = file.read()
        return query



def execute_query(sql: str) -> None:
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
    cursor.execute(sql)
    conn.commit()


if __name__ =="__main__":

    query_paths = [
        "./chapter_03_02/src/tables/staging/insert_dim_currency.sql",
        "./chapter_03_02/src/tables/staging/insert_dim_rate.sql",
        "./chapter_03_02/src/tables/staging/insert_dim_user.sql",
        "./chapter_03_02/src/tables/staging/insert_fact_transaction.sql",
        ]
    for query_path in query_paths:
        sql_query = read_sql(query_path)
        execute_query(sql_query)
