BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[Key_1],
	[d].[OrderID],
	[d].[CustomerID],
	[d].[EmployeeID],
	[d].[OrderDate],
	[d].[RequiredDate],
	[d].[ShippedDate],
	[d].[ShipVia],
	[d].[Freight],
	[d].[ShipName],
	[d].[ShipAddress],
	[d].[ShipCity],
	[d].[ShipRegion],
	[d].[ShipPostalCode],
	[d].[ShipCountry]
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN [g_1].[Freight] > 50 THEN CASE
					WHEN [g_1].[Freight] > 100 THEN 'expensive'
					ELSE 'average'
				END
				ELSE 'cheap'
			END as [Key_1]
		FROM
			[Orders] [g_1]
	) [m_1]
		INNER JOIN [Orders] [d] ON [m_1].[Key_1] = CASE
			WHEN [d].[Freight] > 50 THEN CASE
				WHEN [d].[Freight] > 100 THEN 'expensive'
				ELSE 'average'
			END
			ELSE 'cheap'
		END

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CASE
				WHEN [g_1].[Freight] > 50 THEN CASE
					WHEN [g_1].[Freight] > 100 THEN 'expensive'
					ELSE 'average'
				END
				ELSE 'cheap'
			END as [Key_1]
		FROM
			[Orders] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

