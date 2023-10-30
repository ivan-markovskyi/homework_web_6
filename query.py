import psycopg2


def get_sql_expression(query_number: int) -> str:
    fd = open(f"query_{query_number}.sql", "r")
    sql_expression = fd.read()
    fd.close()
    return sql_expression


def execute_query(sql: str) -> list:
    with psycopg2.connect(
        host="localhost", database="hw_06", user="postgres", password="ivan0307"
    ) as con:
        cur = con.cursor()
        cur.execute(sql)
        return cur.fetchall()


if __name__ == "__main__":
    for i in range(1, 11):
        print(f"РЕЗУДЬТАТ ЗАПИТУ {i}:")
        print(execute_query(get_sql_expression(i)))
        print("___" * 25)
