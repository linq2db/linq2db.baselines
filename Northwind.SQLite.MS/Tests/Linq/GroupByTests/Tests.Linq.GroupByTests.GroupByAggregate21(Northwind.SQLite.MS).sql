-- Northwind.SQLite.MS SQLite.MS SQLite
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
			CASE
				WHEN CASE
					WHEN ([t2].[Average] * 2 = ROUND([t2].[Average] * 2, 2) OR [t2].[Average] IS NULL) AND [t2].[Average] <> ROUND([t2].[Average], 2)
						THEN ROUND(CAST([t2].[Average] AS Float) / 2, 2) * 2
					ELSE ROUND([t2].[Average], 2)
				END = 33.25
					THEN 1
				ELSE 0
			END as [Key_1]
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
			WHEN CASE
				WHEN ((
					SELECT
						CAST(AVG([a_Orders_1].[Freight]) AS Float) as [Average]
					FROM
						[Orders] [a_Orders_1]
					WHERE
						[d].[CustomerID] = [a_Orders_1].[CustomerID]
				) * 2 = ROUND((
					SELECT
						CAST(AVG([a_Orders_1].[Freight]) AS Float) as [Average]
					FROM
						[Orders] [a_Orders_1]
					WHERE
						[d].[CustomerID] = [a_Orders_1].[CustomerID]
				) * 2, 2) OR (
					SELECT
						CAST(AVG([a_Orders_1].[Freight]) AS Float) as [Average]
					FROM
						[Orders] [a_Orders_1]
					WHERE
						[d].[CustomerID] = [a_Orders_1].[CustomerID]
				) IS NULL) AND (
					SELECT
						CAST(AVG([a_Orders_1].[Freight]) AS Float) as [Average]
					FROM
						[Orders] [a_Orders_1]
					WHERE
						[d].[CustomerID] = [a_Orders_1].[CustomerID]
				) <> ROUND((
					SELECT
						CAST(AVG([a_Orders_1].[Freight]) AS Float) as [Average]
					FROM
						[Orders] [a_Orders_1]
					WHERE
						[d].[CustomerID] = [a_Orders_1].[CustomerID]
				), 2)
					THEN ROUND((
					SELECT
						CAST(AVG([a_Orders_1].[Freight]) AS Float) as [Average]
					FROM
						[Orders] [a_Orders_1]
					WHERE
						[d].[CustomerID] = [a_Orders_1].[CustomerID]
				) / 2, 2) * 2
				ELSE ROUND((
					SELECT
						CAST(AVG([a_Orders_1].[Freight]) AS Float) as [Average]
					FROM
						[Orders] [a_Orders_1]
					WHERE
						[d].[CustomerID] = [a_Orders_1].[CustomerID]
				), 2)
			END = 33.25
				THEN 1
			ELSE 0
		END)

-- Northwind.SQLite.MS SQLite.MS SQLite
SELECT DISTINCT
	CASE
		WHEN CASE
			WHEN ([t2].[Average] * 2 = ROUND([t2].[Average] * 2, 2) OR [t2].[Average] IS NULL) AND [t2].[Average] <> ROUND([t2].[Average], 2)
				THEN ROUND(CAST([t2].[Average] AS Float) / 2, 2) * 2
			ELSE ROUND([t2].[Average], 2)
		END = 33.25
			THEN 1
		ELSE 0
	END
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

