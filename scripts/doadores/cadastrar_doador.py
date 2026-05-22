from database.connection import conectar


def cadastrar_doador():

    conn = conectar()

    nome = input("Nome do doador: ")
    documento = input("Documento: ")
    tipo_pessoa = input("Tipo pessoa: ")
    tipo_doador = input("Tipo doador: ")
    contato = input("Contato: ")

    with conn.cursor() as cur:

        cur.execute("""
            INSERT INTO doadores (
                nome,
                documento,
                tipo_pessoa,
                tipo_doador,
                contato
            )
            VALUES (%s, %s, %s, %s, %s)
        """, (
            nome,
            documento,
            tipo_pessoa,
            tipo_doador,
            contato
        ))

        conn.commit()

    conn.close()

    print("Doador cadastrado!")