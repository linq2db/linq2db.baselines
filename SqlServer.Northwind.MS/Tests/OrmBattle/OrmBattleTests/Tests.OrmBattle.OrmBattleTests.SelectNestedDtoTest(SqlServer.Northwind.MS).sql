BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @p DateTime2
SET     @p = DATETIME2FROMPARTS(1998, 1, 1, 0, 0, 0, 0, 7)

SELECT
	[r].[OrderID],
	[a_Customer].[CustomerID],
	[r].[OrderDate]
FROM
	[Orders] [r]
		INNER JOIN [Customers] [a_Customer] ON [r].[CustomerID] = [a_Customer].[CustomerID]
WHERE
	[r].[OrderDate] > @p

