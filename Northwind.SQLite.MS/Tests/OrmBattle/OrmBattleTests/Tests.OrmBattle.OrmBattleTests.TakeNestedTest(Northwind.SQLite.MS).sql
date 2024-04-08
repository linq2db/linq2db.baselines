﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[CustomerID],
	[detail].[OrderID],
	[detail].[CustomerID],
	[detail].[EmployeeID],
	[detail].[OrderDate],
	[detail].[RequiredDate],
	[detail].[ShippedDate],
	[detail].[ShipVia],
	[detail].[Freight],
	[detail].[ShipName],
	[detail].[ShipAddress],
	[detail].[ShipCity],
	[detail].[ShipRegion],
	[detail].[ShipPostalCode],
	[detail].[ShipCountry]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [detail] ON ([c_1].[CustomerID] = [detail].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [detail].[CustomerID] IS NULL)
ORDER BY
	[detail].[OrderDate] DESC

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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

