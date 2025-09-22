BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[r].[OrderID],
	[a_Customer].[CustomerID],
	[r].[OrderDate]
FROM
	[Orders] [r]
		INNER JOIN [Customers] [a_Customer] ON [r].[CustomerID] = [a_Customer].[CustomerID]
WHERE
	[r].[OrderDate] > DATETIMEFROMPARTS(1998, 1, 1, 0, 0, 0, 0)

