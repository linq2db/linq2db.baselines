BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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
-- SqlServer.Northwind.MS SqlServer.2019

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
-- SqlServer.Northwind.MS SqlServer.2019

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
-- SqlServer.Northwind.MS SqlServer.2019

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
-- SqlServer.Northwind.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[t2].[OrderID],
	[t2].[CustomerID],
	[t2].[EmployeeID],
	[t2].[OrderDate],
	[t2].[RequiredDate],
	[t2].[ShippedDate],
	[t2].[ShipVia],
	[t2].[Freight],
	[t2].[ShipName],
	[t2].[ShipAddress],
	[t2].[ShipCity],
	[t2].[ShipRegion],
	[t2].[ShipPostalCode],
	[t2].[ShipCountry]
FROM
	[Customers] [c_1]
		OUTER APPLY (
			SELECT TOP (@take)
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
			WHERE
				([c_1].[CustomerID] = [t1].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [t1].[CustomerID] IS NULL)
		) [t2]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t3]
		WHERE
			([c_1].[CustomerID] = [t3].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [t3].[CustomerID] IS NULL)
	) > 0

