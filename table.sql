CREATE TABLE tb_pedido (
    id      NUMBER,
    data    DATE,
    produto VARCHAR2(30),
    status  VARCHAR2(30)
);

INSERT INTO TB_PEDIDO VALUES (1,SYSDATE,'TV','PROCESSADO');
COMMIT;
INSERT INTO tb_pedido (
    id,
    data,
    produto
) VALUES (
    2,
    sysdate + 2,
    'Televisão'
);
SELECT * FROM TB_PEDIDO;