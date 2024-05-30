BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[cust].[CustomerID]
FROM
	[Customers] [cust]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[Orders] [a_Orders]
		WHERE
			[cust].[CustomerID] = [a_Orders].[CustomerID]
	) > 0 AND
	[cust].[CompanyName] LIKE 'H%' ESCAPE '~'

