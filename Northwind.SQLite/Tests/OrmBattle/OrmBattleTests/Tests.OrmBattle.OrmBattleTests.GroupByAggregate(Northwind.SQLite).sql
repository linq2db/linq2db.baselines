BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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
-- Northwind.SQLite SQLite.Classic SQLite

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
-- Northwind.SQLite SQLite.Classic SQLite

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
DECLARE @p  -- Boolean
SET     @p = 0

SELECT
	[underscore].[CustomerID],
	[underscore].[CompanyName],
	[underscore].[ContactName],
	[underscore].[ContactTitle],
	[underscore].[Address],
	[underscore].[City],
	[underscore].[Region],
	[underscore].[PostalCode],
	[underscore].[Country],
	[underscore].[Phone],
	[underscore].[Fax]
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
			[selectParam].[CustomerID],
			[selectParam].[CompanyName],
			[selectParam].[ContactName],
			[selectParam].[ContactTitle],
			[selectParam].[Address],
			[selectParam].[City],
			[selectParam].[Region],
			[selectParam].[PostalCode],
			[selectParam].[Country],
			[selectParam].[Phone],
			[selectParam].[Fax]
		FROM
			[Customers] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p

