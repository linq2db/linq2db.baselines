BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @OrderDate DateTime2
SET     @OrderDate = DATETIME2FROMPARTS(1997, 11, 14, 0, 0, 0, 0, 7)

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	[order_1].[OrderDate] = @OrderDate

BeforeExecute
-- SqlServer.Northwind SqlServer.2019
DECLARE @OrderDate DateTime2
SET     @OrderDate = DATETIME2FROMPARTS(1997, 11, 14, 0, 0, 0, 0, 7)

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	@OrderDate = [order_1].[OrderDate]

