CREATE OR REPLACE FUNCTION update_stock_on_sale()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'DELETE' THEN
        UPDATE product
        SET product_current_stock = product_current_stock + OLD.product_quantity
        WHERE product_id = OLD.product_id;
        RETURN OLD;
    END IF;
    IF TG_OP = 'UPDATE' THEN
        UPDATE product
        SET product_current_stock = product_current_stock + OLD.product_quantity - NEW.product_quantity
        WHERE product_id = NEW.product_id;
        RETURN NEW;
    END IF;
    IF TG_OP = 'INSERT' THEN
        UPDATE product
        SET product_current_stock = product_current_stock - NEW.product_quantity
        WHERE product_id = NEW.product_id;
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;


    CREATE TRIGGER trg_update_stock_on_sale
    AFTER INSERT OR UPDATE OR DELETE
    ON sale_item FOR EACH ROW EXECUTE FUNCTION update_stock_on_sale();
    