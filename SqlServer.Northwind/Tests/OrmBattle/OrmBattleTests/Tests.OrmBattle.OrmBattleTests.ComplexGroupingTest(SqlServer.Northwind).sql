-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[Item1],
	[m_1].[Key_1],
	[m_1].[Key_2],
	[d_4].[OrderID],
	[d_4].[CustomerID],
	[d_4].[EmployeeID],
	[d_4].[OrderDate],
	[d_4].[RequiredDate],
	[d_4].[ShippedDate],
	[d_4].[ShipVia],
	[d_4].[Freight],
	[d_4].[ShipName],
	[d_4].[ShipAddress],
	[d_4].[ShipCity],
	[d_4].[ShipRegion],
	[d_4].[ShipPostalCode],
	[d_4].[ShipCountry]
FROM
	(
		SELECT DISTINCT
			[t1].[Key_1],
			[d_3].[Key_1] as [Key_2],
			[t1].[Item1]
		FROM
			(
				SELECT DISTINCT
					[d_1].[Key_1],
					[c_1].[CustomerID] as [Item1]
				FROM
					[Customers] [c_1]
						CROSS APPLY (
							SELECT DISTINCT
								DatePart(year, [d].[OrderDate]) as [Key_1]
							FROM
								[Orders] [d]
							WHERE
								[c_1].[CustomerID] = [d].[CustomerID]
						) [d_1]
			) [t1]
				CROSS APPLY (
					SELECT DISTINCT
						DatePart(month, [d_2].[OrderDate]) as [Key_1]
					FROM
						[Orders] [d_2]
					WHERE
						[t1].[Item1] = [d_2].[CustomerID] AND ([t1].[Key_1] = DatePart(year, [d_2].[OrderDate]) OR [t1].[Key_1] IS NULL AND [d_2].[OrderDate] IS NULL)
				) [d_3]
	) [m_1]
		INNER JOIN [Orders] [d_4] ON [m_1].[Item1] = [d_4].[CustomerID] AND ([m_1].[Key_1] = DatePart(year, [d_4].[OrderDate]) OR [m_1].[Key_1] IS NULL AND [d_4].[OrderDate] IS NULL) AND ([m_1].[Key_2] = DatePart(month, [d_4].[OrderDate]) OR [m_1].[Key_2] IS NULL AND [d_4].[OrderDate] IS NULL)

-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[Item1],
	[m_1].[Key_1],
	[d_3].[Key_1],
	[d_3].[Key_1]
FROM
	(
		SELECT DISTINCT
			[d_1].[Key_1],
			[c_1].[CustomerID] as [Item1]
		FROM
			[Customers] [c_1]
				CROSS APPLY (
					SELECT DISTINCT
						DatePart(year, [d].[OrderDate]) as [Key_1]
					FROM
						[Orders] [d]
					WHERE
						[c_1].[CustomerID] = [d].[CustomerID]
				) [d_1]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				DatePart(month, [d_2].[OrderDate]) as [Key_1]
			FROM
				[Orders] [d_2]
			WHERE
				[m_1].[Item1] = [d_2].[CustomerID] AND ([m_1].[Key_1] = DatePart(year, [d_2].[OrderDate]) OR [m_1].[Key_1] IS NULL AND [d_2].[OrderDate] IS NULL)
		) [d_3]

-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[d_1].[Key_1]
FROM
	[Customers] [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				DatePart(year, [d].[OrderDate]) as [Key_1]
			FROM
				[Orders] [d]
			WHERE
				[m_1].[CustomerID] = [d].[CustomerID]
		) [d_1]

-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_1].[CompanyName],
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]

