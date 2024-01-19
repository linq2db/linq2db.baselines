BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t1].[Discontinued],
	[t1].[ProductID],
	[t1].[ProductName],
	[t1].[SupplierID],
	[t1].[CategoryID],
	[t1].[QuantityPerUnit],
	[t1].[UnitPrice],
	[t1].[UnitsInStock],
	[t1].[UnitsOnOrder],
	[t1].[ReorderLevel]
FROM
	[Products] [t1]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[a_Customer_1].[CustomerID],
	[a_Customer_1].[CompanyName],
	[a_Customer_1].[ContactName],
	[a_Customer_1].[ContactTitle],
	[a_Customer_1].[Address],
	[a_Customer_1].[City],
	[a_Customer_1].[Region],
	[a_Customer_1].[PostalCode],
	[a_Customer_1].[Country],
	[a_Customer_1].[Phone],
	[a_Customer_1].[Fax]
FROM
	(
		SELECT
			Count(*) as [Count_1],
			[a_Customer].[CustomerID]
		FROM
			[Orders] [g_1]
				INNER JOIN [Customers] [a_Customer] ON ([g_1].[CustomerID] = [a_Customer].[CustomerID] OR [g_1].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL)
		GROUP BY
			[a_Customer].[CustomerID]
	) [g_2]
		INNER JOIN ([Orders] [o]
			INNER JOIN [Customers] [a_Customer_1] ON ([o].[CustomerID] = [a_Customer_1].[CustomerID] OR [o].[CustomerID] IS NULL AND [a_Customer_1].[CustomerID] IS NULL))
		ON ([g_2].[CustomerID] = [a_Customer_1].[CustomerID] OR [g_2].[CustomerID] IS NULL AND [a_Customer_1].[CustomerID] IS NULL)
WHERE
	[g_2].[Count_1] > 20

