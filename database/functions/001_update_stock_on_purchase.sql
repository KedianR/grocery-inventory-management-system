CREATE OR REPLACE FUNCTION update_stock_on_purchase()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE product
    SET product_current_stock = product_current_stock + NEW.product_quantity
    WHERE product_id = NEW.product_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;