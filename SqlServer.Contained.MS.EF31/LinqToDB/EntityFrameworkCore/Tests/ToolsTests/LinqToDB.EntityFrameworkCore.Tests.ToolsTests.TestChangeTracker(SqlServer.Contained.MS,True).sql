Parameters:
@p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p0='?' (DbType = Decimal)

SET NOCOUNT ON;
UPDATE [Order Details] SET [UnitPrice] = @p0
WHERE [OrderID] = @p1 AND [ProductID] = @p2;
SELECT @@ROWCOUNT;


