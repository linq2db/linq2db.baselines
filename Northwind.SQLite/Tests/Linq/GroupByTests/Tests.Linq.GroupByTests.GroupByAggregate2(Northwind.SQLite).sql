﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
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
			[t3].[Key_1]
		FROM
			(
				SELECT
					[t2].[Key_1]
				FROM
					(
						SELECT
							CASE
								WHEN (
									SELECT
										AVG([a_Orders].[Freight])
									FROM
										[Orders] [a_Orders]
									WHERE
										[t1].[CustomerID] = [a_Orders].[CustomerID]
								) >= 80
									THEN 1
								ELSE 0
							END as [Key_1]
						FROM
							[Customers] [t1]
					) [t2]
				GROUP BY
					[t2].[Key_1]
			) [t3]
	) [m_1]
		INNER JOIN [Customers] [d] ON CASE
			WHEN [m_1].[Key_1] = 1 THEN 1
			ELSE 0
		END = CASE
			WHEN (
				SELECT
					AVG([a_Orders_1].[Freight]) as [AVG_1]
				FROM
					[Orders] [a_Orders_1]
				WHERE
					[d].[CustomerID] = [a_Orders_1].[CustomerID]
			) >= 80
				THEN 1
			ELSE 0
		END

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t2].[Key_1]
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						AVG([a_Orders].[Freight])
					FROM
						[Orders] [a_Orders]
					WHERE
						[t1].[CustomerID] = [a_Orders].[CustomerID]
				) >= 80
					THEN 1
				ELSE 0
			END as [Key_1]
		FROM
			[Customers] [t1]
	) [t2]
GROUP BY
	[t2].[Key_1]

