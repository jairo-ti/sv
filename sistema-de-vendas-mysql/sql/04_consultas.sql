SELECT p.id_pedido, c.nome ,p.data_pedido, p.status
FROM pedidos p
JOIN clientes c 
ON p.id_cliente = c.id_cliente;

SELECT pro.nome, pro.preco, ip.id_pedido, ip.quantidade, ip.preco_unitario
FROM produtos pro 
JOIN itens_pedido ip
ON pro.id_produto = ip.id_produto
WHERE ip.id_pedido = 6;


SELECT pro.nome, pro.preco, ip.id_pedido, ip.quantidade
FROM produtos pro
JOIN itens_pedido ip
ON pro.id_produto = ip.id_produto
ORDER BY ip.id_pedido;

SELECT ip.id_pedido,
       SUM(ip.quantidade * ip.preco_unitario) AS total_pedido
FROM itens_pedido ip
GROUP BY ip.id_pedido;

SELECT SUM(ip.quantidade * ip.preco_unitario) AS total_do_pedido_9
FROM itens_pedido ip
WHERE ip.id_pedido = 9;

SELECT  SUM(ip.quantidade * ip.preco_unitario) AS faturamento_total
FROM pedidos p
JOIN itens_pedido ip
ON p.id_pedido = ip.id_pedido
WHERE p.status IN ('PAGO', 'FINALIZADO');

SELECT *
FROM pedidos
WHERE status = 'ABERTO';

SELECT *
FROM pedidos
WHERE status = 'CANCELADO';

SELECT *
FROM pedidos
WHERE status = 'PAGO';

SELECT *
FROM pedidos
WHERE status = 'FINALIZADO';

