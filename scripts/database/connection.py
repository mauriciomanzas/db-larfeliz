import psycopg2


def conectar():
    return psycopg2.connect(
        host="localhost",
        database="db_larfeliz",
        user="larfeliz_user",
        password="larfeliz_password",
        port="5432"
    )