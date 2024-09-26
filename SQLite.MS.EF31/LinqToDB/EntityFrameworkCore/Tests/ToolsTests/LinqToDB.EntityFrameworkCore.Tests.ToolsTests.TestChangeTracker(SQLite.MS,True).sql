Parameters:
@p1='?', @p2='?', @p0='?'

UPDATE "Order Details" SET "UnitPrice" = @p0
WHERE "OrderID" = @p1 AND "ProductID" = @p2;
SELECT changes();


