BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[Fax],
	[t1].[Phone],
	[t1].[Country],
	[t1].[PostalCode],
	[t1].[Region],
	[t1].[City],
	[t1].[Address],
	[t1].[ContactTitle],
	[t1].[ContactName],
	[t1].[CompanyName],
	[t1].[CustomerID]
FROM
	[Customers] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[PhotoPath],
	[t1].[ReportsTo],
	[t1].[Notes],
	[t1].[Photo],
	[t1].[Extension],
	[t1].[HomePhone],
	[t1].[Country],
	[t1].[PostalCode],
	[t1].[Region],
	[t1].[City],
	[t1].[Address],
	[t1].[HireDate],
	[t1].[BirthDate],
	[t1].[TitleOfCourtesy],
	[t1].[Title],
	[t1].[FirstName],
	[t1].[LastName],
	[t1].[EmployeeID]
FROM
	[Employees] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[ShipCountry],
	[t1].[ShipPostalCode],
	[t1].[ShipRegion],
	[t1].[ShipCity],
	[t1].[ShipAddress],
	[t1].[ShipName],
	[t1].[Freight],
	[t1].[ShipVia],
	[t1].[ShippedDate],
	[t1].[RequiredDate],
	[t1].[OrderDate],
	[t1].[EmployeeID],
	[t1].[CustomerID],
	[t1].[OrderID]
FROM
	[Orders] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel],
	[t1].[Discontinued]
FROM
	[Products] [t1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_2].[Fax],
	[c_2].[Phone],
	[c_2].[Country],
	[c_2].[PostalCode],
	[c_2].[Region],
	[c_2].[City],
	[c_2].[Address],
	[c_2].[ContactTitle],
	[c_2].[ContactName],
	[c_2].[CompanyName],
	[c_2].[CustomerID],
	[c_1].[ShipCountry],
	[c_1].[ShipPostalCode],
	[c_1].[ShipRegion],
	[c_1].[ShipCity],
	[c_1].[ShipAddress],
	[c_1].[ShipName],
	[c_1].[Freight],
	[c_1].[ShipVia],
	[c_1].[ShippedDate],
	[c_1].[RequiredDate],
	[c_1].[OrderDate],
	[c_1].[EmployeeID],
	[c_1].[CustomerID],
	[c_1].[OrderID]
FROM
	[Customers] [c_2]
		INNER JOIN [Orders] [c_1] ON ([a_Customer].[CustomerID] = [c_2].[CustomerID] OR [a_Customer].[CustomerID] IS NULL AND [c_2].[CustomerID] IS NULL)
			INNER JOIN [Customers] [a_Customer] ON ([c_1].[CustomerID] = [a_Customer].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)

