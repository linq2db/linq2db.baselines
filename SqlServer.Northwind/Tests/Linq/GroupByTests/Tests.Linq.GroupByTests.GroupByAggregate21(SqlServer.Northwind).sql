-- SqlServer.Northwind SqlServer.2019
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
			IIF(IIF(([t1].[Average] * 2 = ROUND([t1].[Average] * 2, 2) OR [t1].[Average] IS NULL) AND [t1].[Average] <> ROUND([t1].[Average], 2), ROUND([t1].[Average] / 2, 2) * 2, ROUND([t1].[Average], 2)) = 33.25, 1, 0) as [Key_1]
		FROM
			[Customers] [t2]
				OUTER APPLY (
					SELECT
						AVG([a_Orders].[Freight]) as [Average]
					FROM
						[Orders] [a_Orders]
					WHERE
						[t2].[CustomerID] = [a_Orders].[CustomerID]
				) [t1]
	) [m_1]
		INNER JOIN [Customers] [d]
			OUTER APPLY (
				SELECT
					AVG([a_Orders_1].[Freight]) as [Average]
				FROM
					[Orders] [a_Orders_1]
				WHERE
					[d].[CustomerID] = [a_Orders_1].[CustomerID]
			) [t3]
		ON IIF([m_1].[Key_1] = 1, 1, 0) = IIF(IIF(([t3].[Average] * 2 = ROUND([t3].[Average] * 2, 2) OR [t3].[Average] IS NULL) AND [t3].[Average] <> ROUND([t3].[Average], 2), ROUND([t3].[Average] / 2, 2) * 2, ROUND([t3].[Average], 2)) = 33.25, 1, 0)

-- SqlServer.Northwind SqlServer.2019
SELECT DISTINCT
	IIF(IIF(([t1].[Average] * 2 = ROUND([t1].[Average] * 2, 2) OR [t1].[Average] IS NULL) AND [t1].[Average] <> ROUND([t1].[Average], 2), ROUND([t1].[Average] / 2, 2) * 2, ROUND([t1].[Average], 2)) = 33.25, 1, 0)
FROM
	[Customers] [t2]
		OUTER APPLY (
			SELECT
				AVG([a_Orders].[Freight]) as [Average]
			FROM
				[Orders] [a_Orders]
			WHERE
				[t2].[CustomerID] = [a_Orders].[CustomerID]
		) [t1]

