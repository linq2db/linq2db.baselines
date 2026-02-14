-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	MAX((
		SELECT
			COUNT(*) as [Count_1]
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID]
		WHERE
			[a_Customer].[CustomerID] = [t1].[CustomerID]
	))
FROM
	[Customers] [t1]

