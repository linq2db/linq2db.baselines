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
	[d_5].[OrderID],
	[d_5].[CustomerID],
	[d_5].[EmployeeID],
	[d_5].[OrderDate],
	[d_5].[RequiredDate],
	[d_5].[ShippedDate],
	[d_5].[ShipVia],
	[d_5].[Freight],
	[d_5].[ShipName],
	[d_5].[ShipAddress],
	[d_5].[ShipCity],
	[d_5].[ShipRegion],
	[d_5].[ShipPostalCode],
	[d_5].[ShipCountry]
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
								[d].[Year_1]
							FROM
								(
									SELECT
										DatePart(year, [yg].[OrderDate]) as [Year_1]
									FROM
										[Orders] [yg]
									WHERE
										([t1].[CustomerID] = [yg].[CustomerID] OR [t1].[CustomerID] IS NULL AND [yg].[CustomerID] IS NULL)
								) [d]
							GROUP BY
								[d].[Year_1]
						) [d_1]
			) [t2]
				CROSS APPLY (
					SELECT
						[d_2].[Month_1]
					FROM
						(
							SELECT
								DatePart(year, [a_Orders].[OrderDate]) as [Year_1],
								DatePart(month, [a_Orders].[OrderDate]) as [Month_1]
							FROM
								[Orders] [a_Orders]
							WHERE
								([t2].[CustomerID] = [a_Orders].[CustomerID] OR [t2].[CustomerID] IS NULL AND [a_Orders].[CustomerID] IS NULL)
						) [d_2]
					WHERE
						([t2].[Year_1] = [d_2].[Year_1] OR [t2].[Year_1] IS NULL AND [d_2].[Year_1] IS NULL)
					GROUP BY
						[d_2].[Month_1]
				) [d_3]
	) [m_1]
		INNER JOIN (
			SELECT
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
				[d_4].[ShipCountry],
				DatePart(month, [d_4].[OrderDate]) as [c1],
				DatePart(year, [d_4].[OrderDate]) as [c2]
			FROM
				[Orders] [d_4]
		) [d_5] ON ([m_1].[Month_1] = [d_5].[c1] OR [m_1].[Month_1] IS NULL AND [d_5].[c1] IS NULL) AND ([m_1].[Year_1] = [d_5].[c2] OR [m_1].[Year_1] IS NULL AND [d_5].[c2] IS NULL) AND ([m_1].[CustomerID] = [d_5].[CustomerID] OR [m_1].[CustomerID] IS NULL AND [d_5].[CustomerID] IS NULL)

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
						[d].[Year_1]
					FROM
						(
							SELECT
								DatePart(year, [yg].[OrderDate]) as [Year_1]
							FROM
								[Orders] [yg]
							WHERE
								([t1].[CustomerID] = [yg].[CustomerID] OR [t1].[CustomerID] IS NULL AND [yg].[CustomerID] IS NULL)
						) [d]
					GROUP BY
						[d].[Year_1]
				) [d_1]
	) [m_1]
		CROSS APPLY (
			SELECT
				[d_2].[Month_1]
			FROM
				(
					SELECT
						DatePart(year, [a_Orders].[OrderDate]) as [Year_1],
						DatePart(month, [a_Orders].[OrderDate]) as [Month_1]
					FROM
						[Orders] [a_Orders]
					WHERE
						([m_1].[CustomerID] = [a_Orders].[CustomerID] OR [m_1].[CustomerID] IS NULL AND [a_Orders].[CustomerID] IS NULL)
				) [d_2]
			WHERE
				([m_1].[Year_1] = [d_2].[Year_1] OR [m_1].[Year_1] IS NULL AND [d_2].[Year_1] IS NULL)
			GROUP BY
				[d_2].[Month_1]
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
				[d].[Year_1]
			FROM
				(
					SELECT
						DatePart(year, [yg].[OrderDate]) as [Year_1]
					FROM
						[Orders] [yg]
					WHERE
						([m_1].[CustomerID] = [yg].[CustomerID] OR [m_1].[CustomerID] IS NULL AND [yg].[CustomerID] IS NULL)
				) [d]
			GROUP BY
				[d].[Year_1]
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

