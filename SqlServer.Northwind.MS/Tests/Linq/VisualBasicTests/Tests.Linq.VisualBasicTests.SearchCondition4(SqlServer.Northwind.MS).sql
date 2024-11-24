BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(1997, 11, 14, 0, 0, 0, 0, 7)

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	[order_1].[OrderDate] = @p

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(1997, 11, 14, 0, 0, 0, 0, 7)

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	@p = [order_1].[OrderDate]

