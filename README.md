# Sistema Lar Feliz

Sistema de gerenciamento de estoque e doações desenvolvido para a ONG Lar Feliz.

O projeto tem como objetivo controlar:
- produtos
- categorias
- doadores
- doações
- movimentações de estoque

utilizando PostgreSQL, Docker e Python.

---

# Tecnologias Utilizadas

- Python 3
- PostgreSQL
- Docker
- Docker Compose
- pgAdmin
- psycopg2

---

# Estrutura do Projeto

```text
DB_LarFeliz/
│
├── scripts/
│   ├── database/
│   ├── categorias/
│   ├── produtos/
│   ├── usuarios/
│   ├── doadores/
│   └── doacoes/
│
├── sql/
│   ├── 01_Data_Definition_Language/
│   
│
├── docker-compose.yml
├── requirements.txt
├── README.md
└── .gitignore