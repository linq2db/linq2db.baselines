BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	Sum([t1].[Freight]),
	Min([t1].[Freight]),
	Max([t1].[Freight]),
	Avg([t1].[Freight])
FROM
	[Orders] [t1]
		INNER JOIN [Customers] [a_Customer] ON ([t1].[CustomerID] = [a_Customer].[CustomerID] OR [t1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
GROUP BY
	[a_Customer].[CustomerID]

