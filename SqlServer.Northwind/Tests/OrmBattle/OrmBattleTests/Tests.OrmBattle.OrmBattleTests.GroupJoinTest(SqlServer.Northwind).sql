BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID] AND [o].[CustomerID] IS NOT NULL
		WHERE
			[c_1].[CustomerID] = [a_Customer].[CustomerID]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Employees] [e]
		WHERE
			[c_1].[City] = [e].[City] AND [c_1].[City] IS NOT NULL AND [e].[City] IS NOT NULL OR
			[c_1].[City] IS NULL AND [e].[City] IS NULL
	)
FROM
	[Customers] [c_1]

