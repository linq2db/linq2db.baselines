-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[i].[CustomerID],
	[i].[CompanyName],
	[i].[ContactName],
	[i].[ContactTitle],
	[i].[Address],
	[i].[City],
	[i].[Region],
	[i].[PostalCode],
	[i].[Country],
	[i].[Phone],
	[i].[Fax],
	[o].[OrderID],
	[o].[CustomerID],
	[o].[EmployeeID],
	[o].[OrderDate],
	[o].[RequiredDate],
	[o].[ShippedDate],
	[o].[ShipVia],
	[o].[Freight],
	[o].[ShipName],
	[o].[ShipAddress],
	[o].[ShipCity],
	[o].[ShipRegion],
	[o].[ShipPostalCode],
	[o].[ShipCountry]
FROM
	[Customers] [i]
		INNER JOIN ([Orders] [o]
			INNER JOIN [Customers] [a_Customer] ON [o].[CustomerID] = [a_Customer].[CustomerID])
		ON [a_Customer].[CustomerID] = [i].[CustomerID]

