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
	[t1].[Key_1]
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						Avg([o].[Freight])
					FROM
						[Orders] [o]
					WHERE
						([selectParam].[CustomerID] = [o].[CustomerID] OR [selectParam].[CustomerID] IS NULL AND [o].[CustomerID] IS NULL)
				) >= 80
					THEN 1
				ELSE 0
			END as [Key_1]
		FROM
			[Customers] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite
DECLARE @p1  -- Boolean
SET     @p1 = 0

SELECT
	[underscore].[Fax],
	[underscore].[Phone],
	[underscore].[Country],
	[underscore].[PostalCode],
	[underscore].[Region],
	[underscore].[City],
	[underscore].[Address],
	[underscore].[ContactTitle],
	[underscore].[ContactName],
	[underscore].[CompanyName],
	[underscore].[CustomerID]
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						Avg([o].[Freight])
					FROM
						[Orders] [o]
					WHERE
						([selectParam].[CustomerID] = [o].[CustomerID] OR [selectParam].[CustomerID] IS NULL AND [o].[CustomerID] IS NULL)
				) >= 80
					THEN 1
				ELSE 0
			END as [Key_1],
			[selectParam].[Fax],
			[selectParam].[Phone],
			[selectParam].[Country],
			[selectParam].[PostalCode],
			[selectParam].[Region],
			[selectParam].[City],
			[selectParam].[Address],
			[selectParam].[ContactTitle],
			[selectParam].[ContactName],
			[selectParam].[CompanyName],
			[selectParam].[CustomerID]
		FROM
			[Customers] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p1

