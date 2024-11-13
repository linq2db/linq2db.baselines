Parameters:
@p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p0='?' (DbType = Currency)

SET IMPLICIT_TRANSACTIONS OFF;
SET NOCOUNT ON;
UPDATE [Order Details] SET [UnitPrice] = @p0
OUTPUT 1
WHERE [OrderID] = @p1 AND [ProductID] = @p2;


