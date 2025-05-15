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
        user="de_role",
        password="1234567890",
        host="localhost",
        port=5432
    )
    cursor = conn.cursor()
    cursor.execute(sql)

    result = cursor.fetchall()
    print(result)

    conn.commit()


if __name__ =="__main__":
    query_paths = [
        "./chapter_03_04/src/business_view/select_top_10_currencies.sql"
        ]
    for query_path in query_paths:
        sql_query = read_sql(query_path)
        execute_query(sql_query)
