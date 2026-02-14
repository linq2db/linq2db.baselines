-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	(
		SELECT
			COUNT(*) as [OrderCount]
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
		WHERE
			[c_1].[CustomerID] = [a_Customer].[CustomerID]
	),
	(
		SELECT
			COUNT(*) as [EmployeesCount]
		FROM
			[Employees] [e]
		WHERE
			[c_1].[City] = [e].[City] OR [c_1].[City] IS NULL AND [e].[City] IS NULL
	)
FROM
	[Customers] [c_1]

