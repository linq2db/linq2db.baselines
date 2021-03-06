﻿BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[t1].[OrderID],
	[t1].[EmployeeID],
	[t1].[OrderDate],
	[t1].[RequiredDate],
	[t1].[ShippedDate],
	[t1].[ShipVia],
	[t1].[Freight],
	[t1].[ShipperID],
	[t1].[CompanyName],
	[t1].[Phone],
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
	[t1].[EmployeeID_1],
	[t1].[Fax],
	[t1].[Phone_1],
	[t1].[Country_1],
	[t1].[PostalCode_1],
	[t1].[Region_1],
	[t1].[City_1],
	[t1].[Address_1],
	[t1].[ContactTitle],
	[t1].[ContactName],
	[t1].[CompanyName_1],
	[t1].[CustomerID],
	[join_3].[OrderID],
	[join_3].[ProductID],
	[join_3].[UnitPrice],
	[join_3].[Quantity],
	[join_3].[Discount],
	[query].[EmployeeID],
	[query].[BirthDate],
	[query].[HireDate],
	[query].[ReportsTo],
	[join_1].[PhotoPath],
	[join_1].[ReportsTo],
	[join_1].[Notes],
	[join_1].[Photo],
	[join_1].[Extension],
	[join_1].[HomePhone],
	[join_1].[Country],
	[join_1].[PostalCode],
	[join_1].[Region],
	[join_1].[City],
	[join_1].[Address],
	[join_1].[HireDate],
	[join_1].[BirthDate],
	[join_1].[TitleOfCourtesy],
	[join_1].[Title],
	[join_1].[FirstName],
	[join_1].[LastName],
	[join_1].[EmployeeID],
	[t2].[EmployeeID],
	[t2].[PhotoPath],
	[t2].[ReportsTo],
	[t2].[Notes],
	[t2].[Photo],
	[t2].[Extension],
	[t2].[HomePhone],
	[t2].[Country],
	[t2].[PostalCode],
	[t2].[Region],
	[t2].[City],
	[t2].[Address],
	[t2].[HireDate],
	[t2].[BirthDate],
	[t2].[TitleOfCourtesy],
	[t2].[Title],
	[t2].[FirstName],
	[t2].[LastName],
	[t2].[EmployeeID_1],
	[join_5].[TerritoryID],
	[join_5].[RegionID],
	[join_5].[TerritoryDescription],
	[join_6].[RegionID],
	[join_6].[RegionDescription]
FROM
	[Employees] [query]
		LEFT JOIN [Employees] [join_1] ON [query].[ReportsTo] = [join_1].[EmployeeID]
		LEFT JOIN (
			SELECT
				[join_2].[OrderID],
				[join_2].[EmployeeID],
				[join_2].[OrderDate],
				[join_2].[RequiredDate],
				[join_2].[ShippedDate],
				[join_2].[ShipVia],
				[join_2].[Freight],
				[a_Shipper].[ShipperID],
				[a_Shipper].[CompanyName],
				[a_Shipper].[Phone],
				[a_Employee].[PhotoPath],
				[a_Employee].[ReportsTo],
				[a_Employee].[Notes],
				[a_Employee].[Photo],
				[a_Employee].[Extension],
				[a_Employee].[HomePhone],
				[a_Employee].[Country],
				[a_Employee].[PostalCode],
				[a_Employee].[Region],
				[a_Employee].[City],
				[a_Employee].[Address],
				[a_Employee].[HireDate],
				[a_Employee].[BirthDate],
				[a_Employee].[TitleOfCourtesy],
				[a_Employee].[Title],
				[a_Employee].[FirstName],
				[a_Employee].[LastName],
				[a_Employee].[EmployeeID] as [EmployeeID_1],
				[a_Customer].[Fax],
				[a_Customer].[Phone] as [Phone_1],
				[a_Customer].[Country] as [Country_1],
				[a_Customer].[PostalCode] as [PostalCode_1],
				[a_Customer].[Region] as [Region_1],
				[a_Customer].[City] as [City_1],
				[a_Customer].[Address] as [Address_1],
				[a_Customer].[ContactTitle],
				[a_Customer].[ContactName],
				[a_Customer].[CompanyName] as [CompanyName_1],
				[a_Customer].[CustomerID]
			FROM
				[Orders] [join_2]
					LEFT JOIN [Shippers] [a_Shipper] ON [join_2].[ShipVia] = [a_Shipper].[ShipperID]
					LEFT JOIN [Employees] [a_Employee] ON [join_2].[EmployeeID] = [a_Employee].[EmployeeID]
					LEFT JOIN [Customers] [a_Customer] ON ([join_2].[CustomerID] IS NULL AND [a_Customer].[CustomerID] IS NULL OR [join_2].[CustomerID] = [a_Customer].[CustomerID])
		) [t1] ON [query].[EmployeeID] = [t1].[EmployeeID]
		LEFT JOIN [Order Details] [join_3] ON [t1].[OrderID] = [join_3].[OrderID]
		LEFT JOIN (
			SELECT
				[join_4].[TerritoryID],
				[join_4].[EmployeeID],
				[a_Employee_1].[PhotoPath],
				[a_Employee_1].[ReportsTo],
				[a_Employee_1].[Notes],
				[a_Employee_1].[Photo],
				[a_Employee_1].[Extension],
				[a_Employee_1].[HomePhone],
				[a_Employee_1].[Country],
				[a_Employee_1].[PostalCode],
				[a_Employee_1].[Region],
				[a_Employee_1].[City],
				[a_Employee_1].[Address],
				[a_Employee_1].[HireDate],
				[a_Employee_1].[BirthDate],
				[a_Employee_1].[TitleOfCourtesy],
				[a_Employee_1].[Title],
				[a_Employee_1].[FirstName],
				[a_Employee_1].[LastName],
				[a_Employee_1].[EmployeeID] as [EmployeeID_1]
			FROM
				[EmployeeTerritories] [join_4]
					LEFT JOIN [Employees] [a_Employee_1] ON [join_4].[EmployeeID] = [a_Employee_1].[EmployeeID]
		) [t2] ON [query].[EmployeeID] = [t2].[EmployeeID]
		LEFT JOIN [Territories] [join_5] ON [t2].[TerritoryID] = [join_5].[TerritoryID]
		LEFT JOIN [Region] [join_6] ON [join_5].[RegionID] = [join_6].[RegionID]
WHERE
	[query].[EmployeeID] = 5

