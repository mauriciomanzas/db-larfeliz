from database.connection import conectar


def listar_categorias():

    conn = conectar()

    with conn.cursor() as cur:

        cur.execute("""
            SELECT
                id,
                nome
            FROM categorias
            ORDER BY nome
        """)

        categorias = cur.fetchall()

        print("\n===== CATEGORIAS =====\n")

        for categoria in categorias:

            print(f"""
ID: {categoria[0]}
Nome: {categoria[1]}
-------------------------
""")

    conn.close()