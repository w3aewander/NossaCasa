CREATE VIEW VIEW_COMANDA AS
SELECT COMANDA.id as comanda_id,
       PRODUTO.id as produto_id,
       PRODUTO.descricao as item,
       CONSUMO_ITEM.qtde as qtde,
       PRODUTO.valor_unitario as  valor_unitario,
       CONSUMO_ITEM.qtde  * PRODUTO.valor_unitario as valor
FROM COMANDA
     INNER JOIN CONSUMO_ITEM
     ON COMANDA.consumo_id = CONSUMO_ITEM.id
     INNER JOIN PRODUTO
     ON CONSUMO_ITEM.produto_id = PRODUTO.id
     