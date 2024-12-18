BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	MAX((
		SELECT
			COUNT(*)
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID] AND [o].[CustomerID] IS NOT NULL
		WHERE
			[a_Customer].[CustomerID] = [t1].[CustomerID]
	))
FROM
	[Customers] [t1]

