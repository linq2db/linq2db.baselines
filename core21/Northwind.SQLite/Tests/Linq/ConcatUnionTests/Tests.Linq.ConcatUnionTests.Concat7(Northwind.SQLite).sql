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
	[c_1].[Fax],
	[c_1].[Phone],
	[c_1].[Country],
	[c_1].[PostalCode],
	[c_1].[Region],
	[c_1].[City],
	[c_1].[Address],
	[c_1].[ContactTitle],
	[c_1].[ContactName],
	[c_1].[CompanyName],
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t1]
		WHERE
			([c_1].[CustomerID] IS NULL AND [t1].[CustomerID] IS NULL OR [c_1].[CustomerID] = [t1].[CustomerID])
	) <= 1
UNION ALL
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
	[c_2].[CustomerID]
FROM
	[Customers] [c_2]
WHERE
	(
		SELECT
			Count(*)
		FROM
			[Orders] [t2]
		WHERE
			([c_2].[CustomerID] IS NULL AND [t2].[CustomerID] IS NULL OR [c_2].[CustomerID] = [t2].[CustomerID])
	) > 1

