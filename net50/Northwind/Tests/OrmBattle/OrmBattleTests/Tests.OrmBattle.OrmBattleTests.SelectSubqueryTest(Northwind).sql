BeforeExecute
-- Northwind SqlServer.2017

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
-- Northwind SqlServer.2017

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
-- Northwind SqlServer.2017

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
-- Northwind SqlServer.2017

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
-- Northwind SqlServer.2017

SELECT
	[key_data_result].[CustomerID],
	[key_data_result].[OrderID],
	[_c].[Fax],
	[_c].[Phone],
	[_c].[Country],
	[_c].[PostalCode],
	[_c].[Region],
	[_c].[City],
	[_c].[Address],
	[_c].[ContactTitle],
	[_c].[ContactName],
	[_c].[CompanyName],
	[_c].[CustomerID]
FROM
	(
		SELECT DISTINCT
			[a_Customer].[CustomerID],
			[o].[OrderID]
		FROM
			[Orders] [o]
				INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL OR [o].[CustomerID] = [a_Customer].[CustomerID])
	) [key_data_result]
		INNER JOIN [Customers] [_c] ON ([_c].[CustomerID] IS NULL AND [key_data_result].[CustomerID] IS NULL OR [_c].[CustomerID] = [key_data_result].[CustomerID])

BeforeExecute
-- Northwind SqlServer.2017

SELECT
	[a_Customer].[CustomerID],
	[o].[OrderID]
FROM
	[Orders] [o]
		INNER JOIN [Customers] [a_Customer] ON ([o].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL OR [o].[CustomerID] = [a_Customer].[CustomerID])

