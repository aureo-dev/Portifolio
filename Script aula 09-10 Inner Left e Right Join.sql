USE DB_ecommerce;

/*
1. Relatório Básico de Pedidos (INNER JOIN)
Crie uma lista que mostre o nome de cada cliente ao lado da data e do status de cada pedido
que ele realizou.
Dica: Junte a tabela Tbl_cliente com a Tbl_pedido usando a coluna em comum.
*/
SELECT 		cli.nome AS nome_cliente, ped.data_pedido, ped.status
FROM 		tbl_cliente AS cli
LEFT JOIN 	tbl_pedido AS ped
ON 			cli.id_cliente = ped.data_pedido;


/*
2. Catálogo Detalhado de Produtos (INNER JOIN)
A equipe de marketing precisa de um catálogo completo. Gere um relatório que exiba o nome
do produto, seu preço e o nome da categoria à qual ele pertence.
Dica: Junte a tabela Tbl_produto com a Tbl_categoria.
*/
SELECT 
    pro.nome_produto,
    pro.preco,
    cat.nome_categoria
FROM 
    Tbl_produto AS pro
INNER JOIN 
    Tbl_categoria AS cat
ON 
    pro.id_categoria = cat.id_categoria;

/*
3. Itens Vendidos por Pedido (INNER JOIN)
Para a equipe de logística, crie um relatório que mostre o id_pedido, o nome do produto
vendido e a quantidade de cada item.
Dica: Conecte a tabela Tbl_itens_pedido com a Tbl_produto.
*/
SELECT 
    item.id_pedido,
    pro.nome_produto,
    item.quantidade
FROM 
    Tbl_itens_pedido AS item
INNER JOIN 
    Tbl_produto AS pro
ON 
    item.id_produto = pro.id_produto;

/*
4. Auditoria de Pagamentos (INNER JOIN)
O setor financeiro precisa de um relatório. Liste o id_pedido, a data do pedido e o método de
pagamento utilizado em cada transação.
Dica: Junte a tabela Tbl_pedido com a Tbl_pagamento.
*/
SELECT 
    ped.id_pedido,
    ped.data_pedido,
    pag.metodo_pagamento
FROM 
    Tbl_pedido AS ped
INNER JOIN 
    Tbl_pagamento AS pag
ON 
    ped.id_pedido = pag.id_pedido;


/*
5. Clientes Inativos (LEFT JOIN)
A equipe de marketing quer reativar clientes que nunca compraram. Gere uma lista com o
nome e o email de TODOS os clientes que NUNCA realizaram um pedido.
Dica: Use LEFT JOIN da Tbl_cliente para bl_pedido e filtre onde a chave do pedido é
NULL.
*/

SELECT 
    cli.nome,
    cli.email
FROM 
    Tbl_cliente AS cli
LEFT JOIN 
    Tbl_pedido AS ped
ON 
    cli.id_cliente = ped.id_cliente
WHERE 
    ped.id_pedido IS NULL;

/*
6. Endereços Faltantes (LEFT JOIN)
Deseja-se saber quais clientes ainda não cadastraram um endereço. Mostre o nome e o
email de TODOS os clientes, e ao lado, a cidade deles. Clientes sem endereço devem
aparecer na lista com a cidade como NULL.
Dica: A tabela principal (da esquerda) deve ser a Tbl_cliente.
*/
SELECT 
    cli.nome,
    cli.email,
    ender.cidade
FROM 
    Tbl_cliente AS cli
LEFT JOIN 
    Tbl_endereco AS ender
ON 
    cli.id_cliente = ender.id_cliente;


/*
7. Produtos "Encalhados" (RIGHT JOIN)
A gerência de estoque quer saber quais produtos nunca foram vendidos. Gere uma lista com
o nome e o estoque de TODOS os produtos que NUNCA apareceram em um item de pedido.
Dica: Use RIGHT JOIN da Tbl_itens_pedido para Tbl_produto e filtre onde a chave do
item de pedido é NULL.
*/
SELECT 
    pro.nome_produto,
    pro.estoque
FROM 
    Tbl_itens_pedido AS item
RIGHT JOIN 
    Tbl_produto AS pro
ON 
    item.id_produto = pro.id_produto
WHERE 
    item.id_item IS NULL;



/*
8. Categorias Vazias (LEFT JOIN)
Precisamos saber se existem categorias de produtos sem nenhum item cadastrado. Liste o
nome de TODAS as categorias e, ao lado, o nome dos produtos. Categorias sem produtos
devem aparecer, mas com o nome do produto como NULL.
Dica: A tabela principal (da esquerda) é a Tbl_categoria.
*/
SELECT 
    cat.nome_categoria,
    pro.nome_produto
FROM 
    Tbl_categoria AS cat
LEFT JOIN 
    Tbl_produto AS pro
ON 
    cat.id_categoria = pro.id_categoria;


/*
9. Desafio de Múltiplos JOINs (INNER JOIN)
Monte um relatório detalhado para a auditoria, mostrando: o nome do cliente, a data do
pedido, o nome do produto comprado e a quantidade.

Dica: Junte quatro tabelas em sequência: Tbl_cliente -> Tbl_pedido -> Tbl_itens_pedido ->
Tbl_produto.
*/
SELECT 
    cli.nome AS nome_cliente,
    ped.data_pedido,
    pro.nome_produto,
    item.quantidade
FROM 
    Tbl_cliente AS cli
INNER JOIN 
    Tbl_pedido AS ped ON cli.id_cliente = ped.id_cliente
INNER JOIN 
    Tbl_itens_pedido AS item ON ped.id_pedido = item.id_pedido
INNER JOIN 
    Tbl_produto AS pro ON item.id_produto = pro.id_produto;


/*
10. Desafio de Contagem com JOIN (LEFT JOIN + GROUP BY)
Gere um relatório gerencial que mostre o nome de TODAS as categorias e a quantidade de
produtos (COUNT) em cada uma. Categorias sem produtos devem aparecer na lista com a
contagem 0.
Dica: Use LEFT JOIN da Tbl_categoria para Tbl_produto, e depois agrupe (GROUP BY)
por nome da categoria para poder contar.
*/
SELECT 
    cat.nome_categoria,
    COUNT(pro.id_produto) AS quantidade_produtos
FROM 
    Tbl_categoria AS cat
LEFT JOIN 
    Tbl_produto AS pro
ON 
    cat.id_categoria = pro.id_categoria
GROUP BY 
    cat.nome_categoria;
