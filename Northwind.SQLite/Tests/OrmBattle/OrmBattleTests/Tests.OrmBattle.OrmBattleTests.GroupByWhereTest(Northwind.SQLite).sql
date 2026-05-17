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
			[t1].[Key_1]
		FROM
			(
				SELECT
					[g_1].[OrderDate] as [Key_1]
				FROM
					[Orders] [g_1]
				GROUP BY
					[g_1].[OrderDate]
				HAVING
					COUNT(*) > 5
			) [t1]
	) [m_1]
		INNER JOIN [Orders] [d] ON strftime('%Y-%m-%d %H:%M:%f', [m_1].[Key_1]) = strftime('%Y-%m-%d %H:%M:%f', [d].[OrderDate]) OR [m_1].[Key_1] IS NULL AND [d].[OrderDate] IS NULL

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[g_1].[OrderDate]
FROM
	[Orders] [g_1]
GROUP BY
	[g_1].[OrderDate]
HAVING
	COUNT(*) > 5

