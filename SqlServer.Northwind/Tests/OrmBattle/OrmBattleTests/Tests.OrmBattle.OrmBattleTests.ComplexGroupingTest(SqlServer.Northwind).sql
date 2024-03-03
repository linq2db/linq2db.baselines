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
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[m_1].[Year_1],
	[m_1].[Month_1],
	[d_4].[OrderID],
	[d_4].[CustomerID],
	[d_4].[EmployeeID],
	[d_4].[OrderDate],
	[d_4].[RequiredDate],
	[d_4].[ShippedDate],
	[d_4].[ShipVia],
	[d_4].[Freight],
	[d_4].[ShipName],
	[d_4].[ShipAddress],
	[d_4].[ShipCity],
	[d_4].[ShipRegion],
	[d_4].[ShipPostalCode],
	[d_4].[ShipCountry]
FROM
	(
		SELECT DISTINCT
			[t2].[CustomerID],
			[t2].[Year_1],
			[d_3].[Month_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[CustomerID],
					[d_1].[Year_1]
				FROM
					(
						SELECT DISTINCT
							[c_1].[CustomerID]
						FROM
							[Customers] [c_1]
					) [t1]
						CROSS APPLY (
							SELECT
								DatePart(year, [d].[OrderDate]) as [Year_1]
							FROM
								[Orders] [d]
							WHERE
								[t1].[CustomerID] = [d].[CustomerID]
							GROUP BY
								DatePart(year, [d].[OrderDate])
						) [d_1]
			) [t2]
				CROSS APPLY (
					SELECT
						DatePart(month, [d_2].[OrderDate]) as [Month_1]
					FROM
						[Orders] [d_2]
					WHERE
						([t2].[Year_1] = DatePart(year, [d_2].[OrderDate]) OR [t2].[Year_1] IS NULL AND DatePart(year, [d_2].[OrderDate]) IS NULL) AND
						[t2].[CustomerID] = [d_2].[CustomerID]
					GROUP BY
						DatePart(month, [d_2].[OrderDate])
				) [d_3]
	) [m_1]
		INNER JOIN [Orders] [d_4] ON ([m_1].[Month_1] = DatePart(month, [d_4].[OrderDate]) OR [m_1].[Month_1] IS NULL AND DatePart(month, [d_4].[OrderDate]) IS NULL) AND ([m_1].[Year_1] = DatePart(year, [d_4].[OrderDate]) OR [m_1].[Year_1] IS NULL AND DatePart(year, [d_4].[OrderDate]) IS NULL) AND [m_1].[CustomerID] = [d_4].[CustomerID]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[m_1].[Year_1],
	[d_3].[Month_1]
FROM
	(
		SELECT DISTINCT
			[t1].[CustomerID],
			[d_1].[Year_1]
		FROM
			(
				SELECT DISTINCT
					[c_1].[CustomerID]
				FROM
					[Customers] [c_1]
			) [t1]
				CROSS APPLY (
					SELECT
						DatePart(year, [d].[OrderDate]) as [Year_1]
					FROM
						[Orders] [d]
					WHERE
						[t1].[CustomerID] = [d].[CustomerID]
					GROUP BY
						DatePart(year, [d].[OrderDate])
				) [d_1]
	) [m_1]
		CROSS APPLY (
			SELECT
				DatePart(month, [d_2].[OrderDate]) as [Month_1]
			FROM
				[Orders] [d_2]
			WHERE
				([m_1].[Year_1] = DatePart(year, [d_2].[OrderDate]) OR [m_1].[Year_1] IS NULL AND DatePart(year, [d_2].[OrderDate]) IS NULL) AND
				[m_1].[CustomerID] = [d_2].[CustomerID]
			GROUP BY
				DatePart(month, [d_2].[OrderDate])
		) [d_3]

BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[d_1].[Year_1]
FROM
	[Customers] [m_1]
		CROSS APPLY (
			SELECT
				DatePart(year, [d].[OrderDate]) as [Year_1]
			FROM
				[Orders] [d]
			WHERE
				[m_1].[CustomerID] = [d].[CustomerID]
			GROUP BY
				DatePart(year, [d].[OrderDate])
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

SELECT
	[c_1].[CompanyName],
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]

