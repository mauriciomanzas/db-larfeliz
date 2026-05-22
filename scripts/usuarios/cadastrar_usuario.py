from database.connection import conectar


def cadastrar_usuario():

    conn = conectar()

    nome = input("Nome: ")
    email = input("Email: ")
    senha = input("Senha hash: ")

    with conn.cursor() as cur:

        cur.execute("""
            INSERT INTO usuarios (
                nome,
                email,
                senha_hash
            )
            VALUES (%s, %s, %s)
        """, (
            nome,
            email,
            senha
        ))

        conn.commit()

    conn.close()

    print("Usuário cadastrado!")