create or replace TRIGGER trg_pedidoS
  BEFORE INSERT ON TB_PEDIDO
  FOR EACH ROW
BEGIN
  -- Atualiza o status do pedido para "Novo" após a inserção
  IF :NEW.STATUS IS NULL THEN
    :NEW.STATUS := 'Novo Pedido';
  END IF;
END;