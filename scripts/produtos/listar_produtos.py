from database.connection import conectar


def listar_produtos():

    conn = conectar()

    with conn.cursor() as cur:

        cur.execute("""
            SELECT
                p.id,
                c.nome AS categoria,
                p.nome,
                p.quantidade_da_embalagem,
                p.unidade_medida,
                p.quantidade_atual,
                p.estoque_minimo,
                p.ativo
            FROM produtos p
            INNER JOIN categorias c
                ON p.categoria_id = c.id
            ORDER BY p.nome
        """)

        produtos = cur.fetchall()

        print("\n===== PRODUTOS =====")

        for produto in produtos:
            print(produto)

    conn.close()