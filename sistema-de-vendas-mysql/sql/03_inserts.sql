INSERT INTO clientes (nome, email, cpf, data_cadastro)
VALUES ('João Silva', 'joao.silva@gmail.com', '12345678901', DEFAULT),
	   ('Maria Oliveira', 'maria.oliveira@gmail.com', '23456789012', '2025-12-05 09:15:00'),
       ('Carlos Pereira', 'carlos.pereira@gmail.com', '34567890123', DEFAULT),
       ('Ana Santos', 'ana.santos@gmail.com', '45678901234', '2025-11-10 14:32:45'),
       ('Lucas Rodrigues', 'lucas.rodrigues@gmail.com', '56789012345', DEFAULT),
       ('Fernanda Costa', 'fernanda.costa@gmail.com', '67890123456', '2026-01-03 08:00:00'),
       ('Rafael Almeida', 'rafael.almeida@email.com', '78901234567', DEFAULT),
       ('Juliana Lima', NULL, '89012345678', '2025-12-15 18:47:30'),
       ('Bruno Martins', 'bruno.martins@gmail.com', '90123456789', DEFAULT),
       ('Paula Azevedo', 'paula.azevedo@gmail.com', '01234567890', '2026-01-02 22:10:05');

INSERT INTO categorias (nome_categoria)
VALUES ('Eletrônicos'),
	   ('Roupas e Acessórios'),
       ('Alimentos e Bebidas'),
       ('Casa e Decoração'),
       ('Beleza e Higiene Pessoal');

INSERT INTO produtos (nome, preco, estoque, id_categoria)
VALUES ('Celular', '1000', '200', '1'),
	   ('Notebook', '3000', '100', '1'),
       ('Camiseta', '30', '150', '2'),
       ('Sapato', '90.9', '70', '2'),
       ('Biscoito', '5.99', '30', '3'),
       ('Refrigerante', '10.5', '50', '3'),
       ('Talheres', '75', '40', '4'),
       ('Pano de Mesa', '30', '60', '4'),
       ('Shampoo', '20', '100', '5'),
       ('Creme', '50', '120', '5');

INSERT INTO pedidos (data_pedido, status, id_cliente)
VALUES (DEFAULT, 'PAGO', '1'),
       ('2025-12-08 10:02:00', 'FINALIZADO', '2'),
       (DEFAULT, 'PAGO', '3'),
       ('2025-11-10 18:20:12', 'CANCELADO', '4'),
       (DEFAULT, 'ABERTO', '5'),
       ('2026-01-03 10:15:00', 'PAGO', '6'),
       (DEFAULT, 'PAGO', '7'),
       ('2025-12-16 19:25:10', 'FINALIZADO', '8'),
       (DEFAULT, 'PAGO', '9'),
       ('2026-01-02 22:50:20', 'PAGO', '10');

INSERT INTO itens_pedido (id_pedido, id_produto, quantidade, preco_unitario)
VALUES ('1', '7', '1', '75'),
	   ('1', '6', '1', '10.5'),
       ('2', '2', '1', '3000'),
       ('3', '5', '2', '5.99'),
       ('3', '9', '1', '20'),
       ('4', '1', '1', '1000'),
       ('5', '3', '1', '30'),
       ('5', '4', '1', '90.9'),
       ('6', '8', '1', '30'),
       ('6', '10', '1', '50'),
       ('7', '2', '1', '3000'),
       ('8', '1', '2', '1000'),
       ('9', '2', '2', '3000'),
       ('10', '10', '1', '50');
       






