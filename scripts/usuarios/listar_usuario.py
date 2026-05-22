from database.connection import conectar


def listar_produtos():

    conn = conectar()

    with conn.cursor() as cur:

        cur.execute("""
            SELECT *
            FROM produtos
            ORDER BY nome
        """)

        produtos = cur.fetchall()

        for produto in produtos:
            print(produto)

    conn.close()