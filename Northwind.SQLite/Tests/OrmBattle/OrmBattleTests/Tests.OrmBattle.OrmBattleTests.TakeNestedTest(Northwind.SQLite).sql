BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[m_1].[CustomerID],
	[d_1].[OrderID],
	[d_1].[CustomerID],
	[d_1].[EmployeeID],
	[d_1].[OrderDate],
	[d_1].[RequiredDate],
	[d_1].[ShippedDate],
	[d_1].[ShipVia],
	[d_1].[Freight],
	[d_1].[ShipName],
	[d_1].[ShipAddress],
	[d_1].[ShipCity],
	[d_1].[ShipRegion],
	[d_1].[ShipPostalCode],
	[d_1].[ShipCountry]
FROM
	[Customers] [m_1]
		INNER JOIN (
			SELECT
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
				[d].[ShipCountry],
				ROW_NUMBER() OVER (PARTITION BY [d].[CustomerID] ORDER BY [d].[OrderDate] DESC) as [rn]
			FROM
				[Orders] [d]
		) [d_1] ON [m_1].[CustomerID] = [d_1].[CustomerID] AND [d_1].[rn] <= 5

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[CustomerID],
	[c_1].[CompanyName],
	[c_1].[ContactName],
	[c_1].[ContactTitle],
	[c_1].[Address],
	[c_1].[City],
	[c_1].[Region],
	[c_1].[PostalCode],
	[c_1].[Country],
	[c_1].[Phone],
	[c_1].[Fax]
FROM
	[Customers] [c_1]

