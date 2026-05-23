-- ============================================
-- CARGA DE TESTE - SISTEMA LAR FELIZ
-- ============================================


-- ============================================
-- CATEGORIAS
-- ============================================

INSERT INTO categorias (nome)
VALUES
    ('ALIMENTOS PERECÍVEIS'),
    ('ALIMENTOS NÃO PERECÍVEIS'),
    ('PRODUTOS DE LIMPEZA');


-- ============================================
-- PRODUTOS
-- ============================================

INSERT INTO produtos (
    categoria_id,
    nome,
    quantidade_da_embalagem,
    unidade_medida
)
VALUES

-- ALIMENTOS PERECÍVEIS

(1, 'LEITE INTEGRAL', 1, 'L'),
(1, 'BANANA', 1, 'kg'),
(1, 'IOGURTE NATURAL', 500, 'ml'),
(1, 'QUEIJO MUSSARELA', 1, 'kg'),
(1, 'ALFACE', 1, 'un'),

-- ALIMENTOS NÃO PERECÍVEIS

(2, 'ARROZ', 5, 'kg'),
(2, 'FEIJÃO', 1, 'kg'),
(2, 'MACARRÃO', 500, 'g'),
(2, 'ÓLEO DE SOJA', 900, 'ml'),
(2, 'AÇÚCAR', 1, 'kg'),

-- PRODUTOS DE LIMPEZA

(3, 'ÁGUA SANITÁRIA', 1, 'L'),
(3, 'DETERGENTE', 500, 'ml'),
(3, 'SABÃO EM PÓ', 1, 'kg'),
(3, 'DESINFETANTE', 2, 'L'),
(3, 'PAPEL HIGIÊNICO', 12, 'un');

-- ============================================
-- USUÁRIOS
-- ============================================

INSERT INTO usuarios (
    nome,
    email,
    senha_hash
)
VALUES
    ('Caroline', 'caroline@email.com', 'hash123'),
    ('Iara', 'iara@email.com', 'hash456'),
    ('Lucas', 'lucas@email.com', 'hash789'),
    ('Mauricio', 'mauricio@email.com', 'hash101'),
    ('Patrick', 'patrick@email.com', 'hash102'),
    ('Stefani', 'stefani@email.com', 'hash103'),
    ('Tamiris', 'tamiris@email.com', 'hash104');

-- ============================================
-- DOADORES
-- ============================================

INSERT INTO doadores (
    nome,
    documento,
    tipo_pessoa,
    tipo_doador,
    contato
)
VALUES

-- PESSOA FÍSICA

(
    'Carlos Silva',
    '12345678901',
    'PF',
    'Voluntário',
    'carlos@email.com'
),

(
    'Mariana Souza',
    '23456789012',
    'PF',
    'Comunidade',
    'mariana@email.com'
),

(
    'João Pereira',
    '34567890123',
    'PF',
    'Recorrente',
    'joao@email.com'
),

(
    'Fernanda Lima',
    '45678901234',
    'PF',
    'Voluntário',
    'fernanda@email.com'
),

(
    'Rafael Costa',
    '56789012345',
    'PF',
    'Comunidade',
    'rafael@email.com'
),

-- PESSOA JURÍDICA

(
    'Mercado Bom Preço',
    '12345678000101',
    'PJ',
    'Empresa Parceira',
    'contato@bompreco.com'
),

(
    'LimpaTudo Produtos',
    '23456789000102',
    'PJ',
    'Empresa Parceira',
    'vendas@limpatudo.com'
),

(
    'Supermercado União',
    '34567890000103',
    'PJ',
    'Patrocinador',
    'comercial@uniao.com'
),

(
    'Padaria Pão Feliz',
    '45678901000104',
    'PJ',
    'Parceiro Local',
    'contato@paofeliz.com'
),

(
    'Atacadão Central',
    '56789012000105',
    'PJ',
    'Empresa Parceira',
    'suporte@atacadao.com'
);


-- ============================================
-- DOAÇÕES
-- ============================================

INSERT INTO doacoes (
    doador_id,
    produto_id,
    quantidade,
    observacao
)
VALUES

-- ALIMENTOS PERECÍVEIS

(1, 1, 10, 'Leite próximo do vencimento'),
(2, 2, 15, 'Frutas frescas'),
(6, 3, 20, 'Iogurtes'),
(8, 4, 12, 'Queijos'),
(10, 5, 25, 'Verduras variadas'),

-- ALIMENTOS NÃO PERECÍVEIS

(3, 6, 30, 'Arroz 5kg'),
(4, 7, 20, 'Feijão carioca'),
(7, 8, 50, 'Macarrão'),
(9, 9, 18, 'Óleo de soja'),
(6, 10, 40, 'Açúcar refinado'),

-- PRODUTOS DE LIMPEZA

(5, 11, 12, 'Água sanitária'),
(7, 12, 20, 'Detergente líquido'),
(8, 13, 15, 'Sabão em pó'),
(9, 14, 10, 'Desinfetante'),
(10, 15, 25, 'Papel higiênico');


-- ============================================
-- MOVIMENTAÇÕES DE ESTOQUE
-- ============================================

INSERT INTO movimentacoes_estoque (
    produto_id,
    usuario_id,
    tipo_movimentacao,
    quantidade,
    motivo
)
VALUES

(1, 1, 'ENTRADA', 10, 'Doação recebida'),
(6, 2, 'ENTRADA', 30, 'Doação recebida'),
(11, 3, 'ENTRADA', 12, 'Doação recebida'),
(8, 1, 'SAIDA', 5, 'Distribuição para famílias'),
(14, 2, 'SAIDA', 2, 'Uso interno');
