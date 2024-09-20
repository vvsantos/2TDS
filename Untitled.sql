create or replace TRIGGER trg_pedido
  BEFORE INSERT ON PEDIDO_NOVO
  FOR EACH ROW
BEGIN
  -- Atualiza o status do pedido para "Novo" após a inserção
  IF :NEW.STATUS IS NULL THEN
    :NEW.STATUS := 'Novo Pedido';
  END IF;
END;