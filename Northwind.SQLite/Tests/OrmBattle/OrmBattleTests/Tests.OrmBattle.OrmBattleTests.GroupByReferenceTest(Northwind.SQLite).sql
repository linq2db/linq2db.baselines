-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[CustomerID],
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
			[a_Customer].[CustomerID]
		FROM
			[Orders] [t1]
				INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID]
	) [m_1]
		INNER JOIN ([Orders] [d]
			INNER JOIN [Customers] [a_Customer_1] ON [d].[CustomerID] = [a_Customer_1].[CustomerID])
		ON [m_1].[CustomerID] = [a_Customer_1].[CustomerID]

-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[a_Customer].[CustomerID]
FROM
	[Orders] [t1]
		INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID]
GROUP BY
	[a_Customer].[CustomerID]

