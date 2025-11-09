-- SqlServer.Northwind.MS SqlServer.2019

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
			IIF((
				SELECT
					AVG([a_Orders].[Freight])
				FROM
					[Orders] [a_Orders]
				WHERE
					[t1].[CustomerID] = [a_Orders].[CustomerID]
			) = 33.25, 0, 1) as [Key_1]
		FROM
			[Customers] [t1]
	) [m_1]
		INNER JOIN [Customers] [d] ON IIF([m_1].[Key_1] = 1, 1, 0) = IIF((
			SELECT
				AVG([a_Orders_1].[Freight]) as [Average]
			FROM
				[Orders] [a_Orders_1]
			WHERE
				[d].[CustomerID] = [a_Orders_1].[CustomerID]
		) = 33.25, 0, 1)

-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t2].[Key_1]
FROM
	(
		SELECT
			IIF((
				SELECT
					AVG([a_Orders].[Freight])
				FROM
					[Orders] [a_Orders]
				WHERE
					[t1].[CustomerID] = [a_Orders].[CustomerID]
			) = 33.25, 0, 1) as [Key_1]
		FROM
			[Customers] [t1]
	) [t2]
GROUP BY
	[t2].[Key_1]

