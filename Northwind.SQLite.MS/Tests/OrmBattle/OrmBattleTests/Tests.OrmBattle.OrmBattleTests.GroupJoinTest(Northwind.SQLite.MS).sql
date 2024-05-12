BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
		WHERE
			[t1].[CustomerID] = [a_Customer].[CustomerID]
	),
	(
		SELECT
			COUNT(*)
		FROM
			[Employees] [e]
		WHERE
			([t1].[City] = [e].[City] OR [t1].[City] IS NULL AND [e].[City] IS NULL)
	)
FROM
	[Customers] [t1]

