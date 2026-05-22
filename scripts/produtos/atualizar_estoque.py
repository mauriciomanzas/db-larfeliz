from database.connection import conectar


def atualizar_estoque():

    conn = conectar()

    produto_id = input("ID do produto: ")
    nova_quantidade = input("Nova quantidade atual: ")

    with conn.cursor() as cur:

        cur.execute("""
            UPDATE produtos
            SET quantidade_atual = %s
            WHERE id = %s
        """, (
            nova_quantidade,
            produto_id
        ))

        conn.commit()

    conn.close()

    print("Estoque atualizado!")