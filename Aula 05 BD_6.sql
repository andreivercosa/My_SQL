

DELIMITER $
	CREATE TRIGGER trigger_itensVenda_insert AFTER INSERT ON itensVenda
		FOR EACH ROW
			BEGIN
				UPDATE produtos,
					SET estoque = (estoque - NEW.quantidade)
					WHERE id = NEW.idProduto;
		END$


DELIMITER ;