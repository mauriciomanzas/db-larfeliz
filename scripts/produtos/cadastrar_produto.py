from database.connection import conectar


def cadastrar_produto():

    conn = conectar()

    categoria_id = input("ID da categoria: ")
    nome = input("Nome do produto: ")
    quantidade_embalagem = input("Quantidade da embalagem: ")
    unidade_medida = input("Unidade de medida: ")

    with conn.cursor() as cur:

        cur.execute("""
            INSERT INTO produtos (
                categoria_id,
                nome,
                quantidade_da_embalagem,
                unidade_medida
            )
            VALUES (%s, %s, %s, %s)
        """, (
            categoria_id,
            nome,
            quantidade_embalagem,
            unidade_medida
        ))

        conn.commit()

    conn.close()

    print("Produto cadastrado!")