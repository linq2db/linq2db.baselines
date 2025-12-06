-- SqlServer.Northwind.MS SqlServer.2019

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
			[t1].[OrderDate] as [Key_1]
		FROM
			[Orders] [t1]
	) [m_1]
		INNER JOIN [Orders] [d] ON [m_1].[Key_1] = [d].[OrderDate] OR [m_1].[Key_1] IS NULL AND [d].[OrderDate] IS NULL

-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[t1].[OrderDate]
FROM
	[Orders] [t1]
GROUP BY
	[t1].[OrderDate]

