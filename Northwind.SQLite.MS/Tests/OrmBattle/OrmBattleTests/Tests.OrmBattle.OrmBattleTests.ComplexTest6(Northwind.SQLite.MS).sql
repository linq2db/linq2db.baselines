BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_2].[CustomerID],
	[c_2].[CompanyName],
	[c_2].[ContactName],
	[c_2].[ContactTitle],
	[c_2].[Address],
	[c_2].[City],
	[c_2].[Region],
	[c_2].[PostalCode],
	[c_2].[Country],
	[c_2].[Phone],
	[c_2].[Fax],
	[c_1].[OrderID],
	[c_1].[CustomerID],
	[c_1].[EmployeeID],
	[c_1].[OrderDate],
	[c_1].[RequiredDate],
	[c_1].[ShippedDate],
	[c_1].[ShipVia],
	[c_1].[Freight],
	[c_1].[ShipName],
	[c_1].[ShipAddress],
	[c_1].[ShipCity],
	[c_1].[ShipRegion],
	[c_1].[ShipPostalCode],
	[c_1].[ShipCountry]
FROM
	[Customers] [c_2]
		INNER JOIN [Orders] [c_1] ON ([a_Customer].[CustomerID] = [c_2].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_2].[CustomerID] IS NULL)
			INNER JOIN [Customers] [a_Customer] ON ([c_1].[CustomerID] = [a_Customer].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)

