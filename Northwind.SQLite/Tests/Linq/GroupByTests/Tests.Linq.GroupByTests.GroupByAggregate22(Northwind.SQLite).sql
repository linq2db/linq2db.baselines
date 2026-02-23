-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[d].[CustomerID],
	[d].[CompanyName],
	[d].[ContactName],
	[d].[ContactTitle],
	[d].[Address],
	[d].[City],
	[d].[Region],
	[d].[PostalCode],
	[d].[Country],
	[d].[Phone],
	[d].[Fax]
FROM
	(
		SELECT DISTINCT
			[t2].[Average] <> 33.25 OR [t2].[Average] IS NULL as [Key_1]
		FROM
			(
				SELECT
					(
						SELECT
							AVG([a_Orders].[Freight])
						FROM
							[Orders] [a_Orders]
						WHERE
							[t1].[CustomerID] = [a_Orders].[CustomerID]
					) as [Average]
				FROM
					[Customers] [t1]
			) [t2]
	) [m_1]
		INNER JOIN [Customers] [d] ON ([m_1].[Key_1]) = (CASE
			WHEN (
				SELECT
					AVG([a_Orders_1].[Freight]) as [Average]
				FROM
					[Orders] [a_Orders_1]
				WHERE
					[d].[CustomerID] = [a_Orders_1].[CustomerID]
			) = 33.25
				THEN 0
			ELSE 1
		END)

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t3].[Key_1]
FROM
	(
		SELECT
			[t2].[Average] <> 33.25 OR [t2].[Average] IS NULL as [Key_1],
			[t2].[Average] <> 33.25 OR [t2].[Average] IS NULL as [c1]
		FROM
			(
				SELECT
					(
						SELECT
							AVG([a_Orders].[Freight])
						FROM
							[Orders] [a_Orders]
						WHERE
							[t1].[CustomerID] = [a_Orders].[CustomerID]
					) as [Average]
				FROM
					[Customers] [t1]
			) [t2]
	) [t3]
GROUP BY
	[t3].[Key_1],
	[t3].[c1]

