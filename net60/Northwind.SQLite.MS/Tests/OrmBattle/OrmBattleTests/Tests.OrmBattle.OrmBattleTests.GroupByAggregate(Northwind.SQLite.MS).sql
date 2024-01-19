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
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[c1],
	[d].[CustomerID],
	[d].[CompanyName],
	[d].[ContactName],
	[d].[ContactTitle],
	[d].[Address],
	[d].[City],
	[d].[Region],
	[d].[PostalCode],
	[d].[Country],
	[d].[Phone],
	[d].[Fax]
FROM
	(
		SELECT DISTINCT
			[t2].[c1]
		FROM
			(
				SELECT
					CASE
						WHEN (
							SELECT
								Avg([a_Orders].[Freight])
							FROM
								[Orders] [a_Orders]
							WHERE
								([t1].[CustomerID] = [a_Orders].[CustomerID] OR [t1].[CustomerID] IS NULL AND [a_Orders].[CustomerID] IS NULL)
						) >= 80
							THEN 1
						ELSE 0
					END as [c1]
				FROM
					[Customers] [t1]
			) [t2]
		GROUP BY
			[t2].[c1]
	) [m_1]
		INNER JOIN [Customers] [d] ON [m_1].[c1] = CASE
			WHEN (
				SELECT
					Avg([a_Orders_1].[Freight]) as [Average]
				FROM
					[Orders] [a_Orders_1]
				WHERE
					([d].[CustomerID] = [a_Orders_1].[CustomerID] OR [d].[CustomerID] IS NULL AND [a_Orders_1].[CustomerID] IS NULL)
			) >= 80
				THEN 1
			ELSE 0
		END

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[t2].[c1]
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						Avg([a_Orders].[Freight])
					FROM
						[Orders] [a_Orders]
					WHERE
						([t1].[CustomerID] = [a_Orders].[CustomerID] OR [t1].[CustomerID] IS NULL AND [a_Orders].[CustomerID] IS NULL)
				) >= 80
					THEN 1
				ELSE 0
			END as [c1]
		FROM
			[Customers] [t1]
	) [t2]
GROUP BY
	[t2].[c1]

