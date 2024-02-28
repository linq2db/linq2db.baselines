﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[m_1].[c1],
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
			[t2].[c1]
		FROM
			(
				SELECT
					IIF(((
						SELECT
							Avg([a_Orders].[Freight])
						FROM
							[Orders] [a_Orders]
						WHERE
							[t1].[CustomerID] = [a_Orders].[CustomerID]
					) >= 80), 1, 0) as [c1]
				FROM
					[Customers] [t1]
			) [t2]
		GROUP BY
			[t2].[c1]
	) [m_1]
		INNER JOIN [Customers] [d] ON [m_1].[c1] = IIF((
			SELECT
				Avg([a_Orders_1].[Freight]) as [Average]
			FROM
				[Orders] [a_Orders_1]
			WHERE
				[d].[CustomerID] = [a_Orders_1].[CustomerID]
		) >= 80, 1, 0)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t2].[c1]
FROM
	(
		SELECT
			IIF(((
				SELECT
					Avg([a_Orders].[Freight])
				FROM
					[Orders] [a_Orders]
				WHERE
					[t1].[CustomerID] = [a_Orders].[CustomerID]
			) >= 80), 1, 0) as [c1]
		FROM
			[Customers] [t1]
	) [t2]
GROUP BY
	[t2].[c1]

