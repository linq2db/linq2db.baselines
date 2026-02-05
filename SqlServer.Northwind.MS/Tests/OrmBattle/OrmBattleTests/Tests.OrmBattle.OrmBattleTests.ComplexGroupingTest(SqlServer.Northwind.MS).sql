-- SqlServer.Northwind.MS SqlServer.2019

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
						CROSS APPLY (
							SELECT DISTINCT
								DatePart(year, [yg].[OrderDate]) as [Key_1]
							FROM
								[Orders] [yg]
							WHERE
								[c_1].[CustomerID] = [yg].[CustomerID]
						) [d]
			) [t1]
				CROSS APPLY (
					SELECT DISTINCT
						DatePart(month, [d_1].[OrderDate]) as [Key_1]
					FROM
						[Orders] [d_1]
					WHERE
						[t1].[cond] = [d_1].[CustomerID] AND ([t1].[Key_1] = DatePart(year, [d_1].[OrderDate]) OR [t1].[Key_1] IS NULL AND [d_1].[OrderDate] IS NULL)
				) [d_2]
	) [m_1]
		INNER JOIN [Orders] [d_3] ON [m_1].[cond] = [d_3].[CustomerID] AND ([m_1].[Key_1] = DatePart(year, [d_3].[OrderDate]) OR [m_1].[Key_1] IS NULL AND [d_3].[OrderDate] IS NULL) AND ([m_1].[Key_2] = DatePart(month, [d_3].[OrderDate]) OR [m_1].[Key_2] IS NULL AND [d_3].[OrderDate] IS NULL)

-- SqlServer.Northwind.MS SqlServer.2019

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
				CROSS APPLY (
					SELECT DISTINCT
						DatePart(year, [yg].[OrderDate]) as [Key_1]
					FROM
						[Orders] [yg]
					WHERE
						[c_1].[CustomerID] = [yg].[CustomerID]
				) [d]
	) [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				DatePart(month, [d_1].[OrderDate]) as [Key_1]
			FROM
				[Orders] [d_1]
			WHERE
				[m_1].[cond] = [d_1].[CustomerID] AND ([m_1].[Key_1] = DatePart(year, [d_1].[OrderDate]) OR [m_1].[Key_1] IS NULL AND [d_1].[OrderDate] IS NULL)
		) [d_2]

-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[d].[Key_1]
FROM
	[Customers] [m_1]
		CROSS APPLY (
			SELECT DISTINCT
				DatePart(year, [yg].[OrderDate]) as [Key_1]
			FROM
				[Orders] [yg]
			WHERE
				[m_1].[CustomerID] = [yg].[CustomerID]
		) [d]

-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[CompanyName],
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]

