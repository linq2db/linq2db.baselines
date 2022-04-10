BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @OrderDate  -- DateTime
SET     @OrderDate = '1997-11-14'

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	DateTime([order_1].[OrderDate]) = DateTime(@OrderDate)

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @OrderDate  -- DateTime
SET     @OrderDate = '1997-11-14'

SELECT
	[order_1].[OrderID]
FROM
	[Orders] [order_1]
WHERE
	DateTime(@OrderDate) = DateTime([order_1].[OrderDate])

