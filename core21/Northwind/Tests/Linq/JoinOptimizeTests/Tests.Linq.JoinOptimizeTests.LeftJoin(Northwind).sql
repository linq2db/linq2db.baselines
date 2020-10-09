BeforeExecute
-- Northwind SqlServer.2017

SELECT 
	[t1].[OrderID], 
	[t1].[ProductID], 
	[t1].[UnitPrice], 
	[t1].[Quantity], 
	[t1].[Discount]
FROM
	[Order Details] [t1]

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
	[od].[OrderID], 
	[o1].[OrderID], 
	[o].[OrderID], 
	[o_1].[OrderID], 
	[o].[OrderID]
FROM
	[Order Details] [od]
		INNER JOIN [Orders] [o1] ON [od].[OrderID] = [o1].[OrderID] AND [od].[ProductID] = 39
		INNER JOIN [Employees] [e1] ON [o1].[EmployeeID] = [e1].[EmployeeID]
		LEFT JOIN [Orders] [o] ON [o].[OrderID] = [od].[OrderID]
		LEFT JOIN [Orders] [o_1] ON [o_1].[OrderID] = [od].[OrderID] AND [od].[ProductID] = 1
		LEFT JOIN [Orders] [o_2] ON [o_2].[OrderID] = [od].[OrderID]
WHERE
	[o_2].[OrderID] IS NOT NULL AND [o_2].[OrderID] > 1000
ORDER BY
	[od].[OrderID]

