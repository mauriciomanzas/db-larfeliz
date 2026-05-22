-- =========================================
-- TABELA USUARIOS
-- =========================================

CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    senha_hash VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP DEFAULT NOW()
);

-- =========================================
-- TABELA CATEGORIAS
-- =========================================

CREATE TABLE categorias (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL UNIQUE
);

-- =========================================
-- TABELA PRODUTOS
-- =========================================

CREATE TABLE produtos (
    id SERIAL PRIMARY KEY,

    categoria_id INTEGER NOT NULL,

    nome VARCHAR(255) NOT NULL,
    quantidade_da_embalagem NUMERIC(10,2),

    quantidade_atual INTEGER NOT NULL DEFAULT 0,
    estoque_minimo INTEGER NOT NULL DEFAULT 5,

    unidade_medida VARCHAR(50) NOT NULL,

    ativo BOOLEAN DEFAULT TRUE,

    CONSTRAINT fk_produtos_categoria
        FOREIGN KEY (categoria_id)
        REFERENCES categorias(id),

    CONSTRAINT chk_quantidade_atual
        CHECK (quantidade_atual >= 0),

    CONSTRAINT chk_estoque_minimo
        CHECK (estoque_minimo >= 0)
);


-- =========================================
-- TABELA DOADORES
-- =========================================

CREATE TABLE doadores (
    id SERIAL PRIMARY KEY,

    nome VARCHAR(255) NOT NULL,

    documento VARCHAR(255) UNIQUE,

    tipo_pessoa VARCHAR(50) NOT NULL,

    tipo_doador VARCHAR(50),

    contato VARCHAR(255),

    ativo BOOLEAN DEFAULT TRUE
);


-- =========================================
-- TABELA DOACOES
-- =========================================

CREATE TABLE doacoes (
    id SERIAL PRIMARY KEY,

    doador_id INTEGER NOT NULL,

    produto_id INTEGER NOT NULL,

    quantidade INTEGER NOT NULL,

    data_hora TIMESTAMP DEFAULT NOW(),

    observacao TEXT,

    CONSTRAINT fk_doacoes_doador
        FOREIGN KEY (doador_id)
        REFERENCES doadores(id),

    CONSTRAINT fk_doacoes_produto
        FOREIGN KEY (produto_id)
        REFERENCES produtos(id),

    CONSTRAINT chk_doacoes_quantidade
        CHECK (quantidade > 0)
);


-- =========================================
-- TABELA MOVIMENTACOES_ESTOQUE
-- =========================================

CREATE TABLE movimentacoes_estoque (
    id SERIAL PRIMARY KEY,

    produto_id INTEGER NOT NULL,

    usuario_id INTEGER NOT NULL,

    tipo_movimentacao VARCHAR(50) NOT NULL,

    quantidade INTEGER NOT NULL,

    motivo VARCHAR(255),

    data_hora TIMESTAMP DEFAULT NOW(),

    CONSTRAINT fk_movimentacoes_produto
        FOREIGN KEY (produto_id)
        REFERENCES produtos(id),

    CONSTRAINT fk_movimentacoes_usuario
        FOREIGN KEY (usuario_id)
        REFERENCES usuarios(id),

    CONSTRAINT chk_movimentacao_quantidade
        CHECK (quantidade > 0),

    CONSTRAINT chk_tipo_movimentacao
        CHECK (
            tipo_movimentacao IN (
                'ENTRADA',
                'SAIDA',
                'AJUSTE'
            )
        )
);