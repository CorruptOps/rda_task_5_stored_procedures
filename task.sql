DROP DATABASE ShopDB;

CREATE DATABASE ShopDB;
USE ShopDB;

-- Тут мають бути CREATE TABLE / INSERT,
-- якщо вони не виконуються окремим скриптом

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN warehouse_id INT)
BEGIN
    SELECT
        Products.Name,
        ProductInventory.WarehouseAmount
    FROM ProductInventory
    JOIN Products
        ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = warehouse_id;
END //

DELIMITER ;
