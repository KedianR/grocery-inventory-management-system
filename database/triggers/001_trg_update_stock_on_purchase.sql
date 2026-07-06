CREATE TRIGGER trg_update_stock_on_purchase
AFTER INSERT
ON purchase_item
FOR EACH ROW
EXECUTE FUNCTION update_stock_on_purchase();
