-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[cond],
	[m_1].[Key_1],
	[m_1].[Key_2],
	[d_3].[OrderID],
	[d_3].[CustomerID],
	[d_3].[EmployeeID],
	[d_3].[OrderDate],
	[d_3].[RequiredDate],
	[d_3].[ShippedDate],
	[d_3].[ShipVia],
	[d_3].[Freight],
	[d_3].[ShipName],
	[d_3].[ShipAddress],
	[d_3].[ShipCity],
	[d_3].[ShipRegion],
	[d_3].[ShipPostalCode],
	[d_3].[ShipCountry]
FROM
	(
		SELECT DISTINCT
			[t1].[cond],
			[t1].[Key_1],
			[d_2].[Key_1] as [Key_2]
		FROM
			(
				SELECT DISTINCT
					[c_1].[CustomerID] as [cond],
					[d].[Key_1]
				FROM
					[Customers] [c_1]
						INNER JOIN (
							SELECT DISTINCT
								CAST(strftime('%Y', [yg].[OrderDate]) AS INTEGER) as [Key_1],
								[yg].[CustomerID]
							FROM
								[Orders] [yg]
						) [d] ON [c_1].[CustomerID] = [d].[CustomerID]
			) [t1]
				INNER JOIN (
					SELECT DISTINCT
						CAST(strftime('%m', [d_1].[OrderDate]) AS INTEGER) as [Key_1],
						[d_1].[CustomerID],
						CAST(strftime('%Y', [d_1].[OrderDate]) AS INTEGER) as [c1]
					FROM
						[Orders] [d_1]
				) [d_2] ON [t1].[cond] = [d_2].[CustomerID] AND ([t1].[Key_1] = [d_2].[c1] OR [t1].[Key_1] IS NULL AND [d_2].[c1] IS NULL)
	) [m_1]
		INNER JOIN [Orders] [d_3] ON [m_1].[cond] = [d_3].[CustomerID] AND ([m_1].[Key_1] = CAST(strftime('%Y', [d_3].[OrderDate]) AS INTEGER) OR [m_1].[Key_1] IS NULL AND [d_3].[OrderDate] IS NULL) AND ([m_1].[Key_2] = CAST(strftime('%m', [d_3].[OrderDate]) AS INTEGER) OR [m_1].[Key_2] IS NULL AND [d_3].[OrderDate] IS NULL)

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[cond],
	[m_1].[Key_1],
	[d_2].[Key_1],
	[d_2].[Key_1]
FROM
	(
		SELECT DISTINCT
			[c_1].[CustomerID] as [cond],
			[d].[Key_1]
		FROM
			[Customers] [c_1]
				INNER JOIN (
					SELECT DISTINCT
						CAST(strftime('%Y', [yg].[OrderDate]) AS INTEGER) as [Key_1],
						[yg].[CustomerID]
					FROM
						[Orders] [yg]
				) [d] ON [c_1].[CustomerID] = [d].[CustomerID]
	) [m_1]
		INNER JOIN (
			SELECT DISTINCT
				CAST(strftime('%m', [d_1].[OrderDate]) AS INTEGER) as [Key_1],
				[d_1].[CustomerID],
				CAST(strftime('%Y', [d_1].[OrderDate]) AS INTEGER) as [c1]
			FROM
				[Orders] [d_1]
		) [d_2] ON [m_1].[cond] = [d_2].[CustomerID] AND ([m_1].[Key_1] = [d_2].[c1] OR [m_1].[Key_1] IS NULL AND [d_2].[c1] IS NULL)

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[CustomerID],
	[d].[Key_1]
FROM
	[Customers] [m_1]
		INNER JOIN (
			SELECT DISTINCT
				CAST(strftime('%Y', [yg].[OrderDate]) AS INTEGER) as [Key_1],
				[yg].[CustomerID]
			FROM
				[Orders] [yg]
		) [d] ON [m_1].[CustomerID] = [d].[CustomerID]

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[CompanyName],
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]

