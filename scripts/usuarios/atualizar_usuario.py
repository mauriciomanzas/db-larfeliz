from database.connection import conectar


def atualizar_usuario():

    conn = conectar()

    usuario_id = input("ID do usuário: ")
    novo_nome = input("Novo nome: ")
    novo_email = input("Novo email: ")

    with conn.cursor() as cur:

        cur.execute("""
            UPDATE usuarios
            SET
                nome = %s,
                email = %s
            WHERE id = %s
        """, (
            novo_nome,
            novo_email,
            usuario_id
        ))

        conn.commit()

    conn.close()

    print("Usuário atualizado!")