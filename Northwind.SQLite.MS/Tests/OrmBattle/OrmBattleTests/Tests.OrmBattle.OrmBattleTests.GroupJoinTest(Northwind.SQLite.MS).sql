BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t1]
				INNER JOIN [Customers] [a_Customer] ON ([t1].[CustomerID] = [a_Customer].[CustomerID] OR [t1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
		WHERE
			([c_1].[CustomerID] = [a_Customer].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
	),
	(
		SELECT
			Count(*)
		FROM
			[Employees] [t2]
		WHERE
			([c_1].[City] = [t2].[City] OR [c_1].[City] IS NULL AND [t2].[City] IS NULL)
	)
FROM
	[Customers] [c_1]

