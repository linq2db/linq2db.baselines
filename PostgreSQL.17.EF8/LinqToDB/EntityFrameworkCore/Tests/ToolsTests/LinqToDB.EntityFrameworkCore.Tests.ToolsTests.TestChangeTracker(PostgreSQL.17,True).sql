Parameters:
@p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p0='?' (DbType = Currency)

UPDATE "Order Details" SET "UnitPrice" = @p0
WHERE "OrderID" = @p1 AND "ProductID" = @p2;


