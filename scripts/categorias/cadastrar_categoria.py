from database.connection import conectar


def cadastrar_categoria():

    conn = conectar()

    nome = input("Nome da categoria: ")

    with conn.cursor() as cur:

        cur.execute("""
            INSERT INTO categorias (nome)
            VALUES (%s)
        """, (nome,))

        conn.commit()

    conn.close()

    print("Categoria cadastrada!")