import requests
import psycopg2

from bs4 import BeautifulSoup


def crawl_data():
    response = requests.get("https://www.xe.com/symbols/")
    soup = BeautifulSoup(response.content, "html.parser")

    rows = soup.find_all("li", class_="sc-d9d0d44d-8 knzhHe")[1:]

    data = []
    for row in rows:
        fields = row.find_all("div", class_="sc-d9d0d44d-9 tlqhE")
        record = {
            "country_and_currency": fields[0].get_text(strip=True),
            "currency_code": fields[1].get_text(strip=True),
            "font_code": fields[2].get_text(strip=True),
            "font_arial": fields[3].get_text(strip=True),
            "unicode_decimal": fields[4].get_text(strip=True),
            "unicode_hex": fields[5].get_text(strip=True)
        }
        data.append(record)
        
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
        INSERT INTO raw.xe_data (
            country_and_currency, currency_code, font_code
            , font_arial, unicode_decimal, unicode_hex
        ) VALUES (
            %s, %s, %s, %s, %s, %s
        );
    """

    cursor.execute(
        sql,
        (
            data.get("country_and_currency"),
            data.get("currency_code"),
            data.get("font_code"),
            data.get("font_arial"),
            data.get("unicode_decimal"),
            data.get("unicode_hex")
        )
    )
    conn.commit()


if __name__ == "__main__":
    crawled_data = crawl_data()
    for record in crawled_data:
        load_data(record)
