-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[CustomerID],
	[m_1].[CompanyName],
	[m_1].[ContactName],
	[m_1].[ContactTitle],
	[m_1].[Address],
	[m_1].[City],
	[m_1].[Region],
	[m_1].[Country],
	[m_1].[Phone],
	[m_1].[Fax],
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
			[a_Customer].[CustomerID],
			[a_Customer].[CompanyName],
			[a_Customer].[ContactName],
			[a_Customer].[ContactTitle],
			[a_Customer].[Address],
			[a_Customer].[City],
			[a_Customer].[Region],
			[a_Customer].[PostalCode],
			[a_Customer].[Country],
			[a_Customer].[Phone],
			[a_Customer].[Fax]
		FROM
			[Orders] [t1]
				INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID]
	) [m_1]
		CROSS JOIN [Orders] [d]
		INNER JOIN [Customers] [a_Customer_1] ON [d].[CustomerID] = [a_Customer_1].[CustomerID]
WHERE
	1 = 0

-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT DISTINCT
	[a_Customer].[CustomerID],
	[a_Customer].[CompanyName],
	[a_Customer].[ContactName],
	[a_Customer].[ContactTitle],
	[a_Customer].[Address],
	[a_Customer].[City],
	[a_Customer].[Region],
	[a_Customer].[PostalCode],
	[a_Customer].[Country],
	[a_Customer].[Phone],
	[a_Customer].[Fax]
FROM
	[Orders] [t1]
		INNER JOIN [Customers] [a_Customer] ON [t1].[CustomerID] = [a_Customer].[CustomerID]

