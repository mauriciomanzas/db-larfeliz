from categorias.cadastrar_categoria import cadastrar_categoria
from categorias.listar_categorias import listar_categorias
from categorias.apagar_categoria import apagar_categoria

from produtos.cadastrar_produto import cadastrar_produto
from produtos.listar_produtos import listar_produtos
from produtos.atualizar_estoque import atualizar_estoque

from usuarios.cadastrar_usuario import cadastrar_usuario
from usuarios.atualizar_usuario import atualizar_usuario

from doadores.cadastrar_doador import cadastrar_doador

from doacoes.cadastrar_doacao import cadastrar_doacao


while True:

    print("\n========= MENU =========")

    # ====================================
    # CATEGORIAS
    # ====================================

    print("\n--- CATEGORIAS DE PRODUTOS ---")
    print("1 - Cadastrar categoria")
    print("2 - Listar categorias")
    print("3 - Apagar categoria")

    # ====================================
    # PRODUTOS
    # ====================================

    print("\n--- PRODUTOS ---")
    print("4 - Cadastrar produto")
    print("5 - Listar produtos")
    print("6 - Atualizar estoque")

    # ====================================
    # USUÁRIOS
    # ====================================

    print("\n--- USUÁRIOS ---")
    print("7 - Cadastrar usuário")
    print("8 - Atualizar usuário")

    # ====================================
    # DOADORES
    # ====================================

    print("\n--- DOADORES ---")
    print("9 - Cadastrar doador")

    # ====================================
    # DOAÇÕES
    # ====================================

    print("\n--- DOAÇÕES ---")
    print("10 - Cadastrar doação")

    # ====================================
    # SAIR
    # ====================================

    print("\n0 - Sair")

    opcao = input("\nEscolha uma opção: ")

    # ====================================
    # CATEGORIAS
    # ====================================

    if opcao == "1":
        cadastrar_categoria()

    elif opcao == "2":
        listar_categorias()

    elif opcao == "3":
        apagar_categoria()

    # ====================================
    # PRODUTOS
    # ====================================

    elif opcao == "4":
        cadastrar_produto()

    elif opcao == "5":
        listar_produtos()

    elif opcao == "6":
        atualizar_estoque()

    # ====================================
    # USUÁRIOS
    # ====================================

    elif opcao == "7":
        cadastrar_usuario()

    elif opcao == "8":
        atualizar_usuario()

    # ====================================
    # DOADORES
    # ====================================

    elif opcao == "9":
        cadastrar_doador()

    # ====================================
    # DOAÇÕES
    # ====================================

    elif opcao == "10":
        cadastrar_doacao()

    # ====================================
    # SAIR
    # ====================================

    elif opcao == "0":
        print("\nEncerrando sistema...")
        break

    else:
        print("\nOpção inválida!")