BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[m_1].[CustomerID],
	[d_1].[OrderID],
	[d_1].[CustomerID],
	[d_1].[EmployeeID],
	[d_1].[OrderDate],
	[d_1].[RequiredDate],
	[d_1].[ShippedDate],
	[d_1].[ShipVia],
	[d_1].[Freight],
	[d_1].[ShipName],
	[d_1].[ShipAddress],
	[d_1].[ShipCity],
	[d_1].[ShipRegion],
	[d_1].[ShipPostalCode],
	[d_1].[ShipCountry]
FROM
	[Customers] [m_1]
		CROSS APPLY (
			SELECT TOP (5)
				[d].[OrderID],
				[d].[CustomerID],
				[d].[EmployeeID],
				[d].[OrderDate],
				[d].[RequiredDate],
				[d].[ShippedDate],
				[d].[ShipVia],
				[d].[Freight],
				[d].[ShipName],
				[d].[ShipAddress],
				[d].[ShipCity],
				[d].[ShipRegion],
				[d].[ShipPostalCode],
				[d].[ShipCountry]
			FROM
				(
					SELECT
						[a_Orders].[OrderDate],
						[a_Orders].[OrderID],
						[a_Orders].[CustomerID],
						[a_Orders].[EmployeeID],
						[a_Orders].[RequiredDate],
						[a_Orders].[ShippedDate],
						[a_Orders].[ShipVia],
						[a_Orders].[Freight],
						[a_Orders].[ShipName],
						[a_Orders].[ShipAddress],
						[a_Orders].[ShipCity],
						[a_Orders].[ShipRegion],
						[a_Orders].[ShipPostalCode],
						[a_Orders].[ShipCountry]
					FROM
						[Orders] [a_Orders]
					WHERE
						[m_1].[CustomerID] = [a_Orders].[CustomerID]
				) [d]
			ORDER BY
				[d].[OrderDate] DESC
		) [d_1]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[c_1].[CustomerID],
	[c_1].[CompanyName],
	[c_1].[ContactName],
	[c_1].[ContactTitle],
	[c_1].[Address],
	[c_1].[City],
	[c_1].[Region],
	[c_1].[PostalCode],
	[c_1].[Country],
	[c_1].[Phone],
	[c_1].[Fax]
FROM
	[Customers] [c_1]

