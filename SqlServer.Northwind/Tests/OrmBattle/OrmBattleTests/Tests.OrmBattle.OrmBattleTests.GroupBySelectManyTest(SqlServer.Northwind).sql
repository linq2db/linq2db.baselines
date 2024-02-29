BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[CustomerID],
	[t1].[CompanyName],
	[t1].[ContactName],
	[t1].[ContactTitle],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[Phone],
	[t1].[Fax]
FROM
	[Customers] [t1]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[EmployeeID],
	[t1].[LastName],
	[t1].[FirstName],
	[t1].[Title],
	[t1].[TitleOfCourtesy],
	[t1].[BirthDate],
	[t1].[HireDate],
	[t1].[Address],
	[t1].[City],
	[t1].[Region],
	[t1].[PostalCode],
	[t1].[Country],
	[t1].[HomePhone],
	[t1].[Extension],
	[t1].[Photo],
	[t1].[Notes],
	[t1].[ReportsTo],
	[t1].[PhotoPath]
FROM
	[Employees] [t1]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[t1].[OrderID],
	[t1].[CustomerID],
	[t1].[EmployeeID],
	[t1].[OrderDate],
	[t1].[RequiredDate],
	[t1].[ShippedDate],
	[t1].[ShipVia],
	[t1].[Freight],
	[t1].[ShipName],
	[t1].[ShipAddress],
	[t1].[ShipCity],
	[t1].[ShipRegion],
	[t1].[ShipPostalCode],
	[t1].[ShipCountry]
FROM
	[Orders] [t1]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

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
-- SqlServer.Northwind SqlServer.2019

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
	(
		SELECT
			[t1].[City]
		FROM
			[Customers] [t1]
		GROUP BY
			[t1].[City]
	) [cp]
		INNER JOIN [Customers] [c_1] ON ([cp].[City] = [c_1].[City] OR [cp].[City] IS NULL AND [c_1].[City] IS NULL)

