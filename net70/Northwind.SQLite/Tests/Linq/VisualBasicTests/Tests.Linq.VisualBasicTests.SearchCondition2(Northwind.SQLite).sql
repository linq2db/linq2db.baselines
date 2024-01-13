BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[cust].[CustomerID]
FROM
	[Customers] [cust]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Orders] [a_Orders]
		WHERE
			([cust].[CustomerID] = [a_Orders].[CustomerID] OR [cust].[CustomerID] IS NULL AND [a_Orders].[CustomerID] IS NULL)
	) > 0 AND
	[cust].[CompanyName] LIKE 'H%' ESCAPE '~'

