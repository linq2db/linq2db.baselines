BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[r].[OrderID],
	[a_Customer].[CustomerID],
	[r].[OrderDate]
FROM
	[Orders] [r]
		INNER JOIN [Customers] [a_Customer] ON [r].[CustomerID] = [a_Customer].[CustomerID] AND [r].[CustomerID] IS NOT NULL
WHERE
	[r].[OrderDate] > DATETIME2FROMPARTS(1998, 1, 1, 0, 0, 0, 0, 7) AND
	[r].[OrderDate] IS NOT NULL

