BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	Max([t1].[cnt])
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[Orders] [o]
						INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] = [a_Customer].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
				WHERE
					([a_Customer].[CustomerID] = [c_1].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_1].[CustomerID] IS NULL)
			) as [cnt]
		FROM
			[Customers] [c_1]
	) [t1]

