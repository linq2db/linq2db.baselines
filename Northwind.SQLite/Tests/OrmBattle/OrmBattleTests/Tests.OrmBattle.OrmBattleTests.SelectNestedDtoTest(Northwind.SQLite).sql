BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @OrderDate  -- DateTime
SET     @OrderDate = '1998-01-01'

SELECT
	[r].[OrderID],
	[a_Customer].[CustomerID],
	[r].[OrderDate]
FROM
	[Orders] [r]
		INNER JOIN [Customers] [a_Customer] ON ([r].[CustomerID] = [a_Customer].[CustomerID] OR [r].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
WHERE
	DateTime([r].[OrderDate]) > DateTime(@OrderDate)

