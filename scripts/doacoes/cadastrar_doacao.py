from database.connection import conectar


def cadastrar_doacao():

    conn = conectar()

    doador_id = input("ID do doador: ")
    produto_id = input("ID do produto: ")
    quantidade = input("Quantidade doada: ")
    observacao = input("Observação: ")

    with conn.cursor() as cur:

        cur.execute("""
            INSERT INTO doacoes (
                doador_id,
                produto_id,
                quantidade,
                observacao
            )
            VALUES (%s, %s, %s, %s)
        """, (
            doador_id,
            produto_id,
            quantidade,
            observacao
        ))

        conn.commit()

    conn.close()

    print("Doação cadastrada!")