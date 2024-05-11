BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_1].[ContactName],
	[o].[OrderDate]
FROM
	[Customers] [c_1],
	[Orders] [o]
WHERE
	[c_1].[CustomerID] = (
		SELECT
			[a_Customer].[CustomerID]
		FROM
			[Customers] [a_Customer]
		WHERE
			[o].[CustomerID] = [a_Customer].[CustomerID]
	)
ORDER BY
	[c_1].[ContactName],
	[o].[OrderDate]

