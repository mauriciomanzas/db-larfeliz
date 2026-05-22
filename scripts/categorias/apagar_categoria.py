from database.connection import conectar


def apagar_categoria():

    conn = conectar()

    categoria_id = input("ID da categoria que deseja apagar: ")

    with conn.cursor() as cur:

        cur.execute("""
            DELETE FROM categorias
            WHERE id = %s
        """, (categoria_id,))

        conn.commit()

    conn.close()

    print("Categoria apagada com sucesso!")