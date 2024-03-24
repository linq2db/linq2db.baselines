BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[i].[CustomerID],
	[detail].[OrderID],
	[detail].[CustomerID],
	[detail].[EmployeeID],
	[detail].[OrderDate],
	[detail].[RequiredDate],
	[detail].[ShippedDate],
	[detail].[ShipVia],
	[detail].[Freight],
	[detail].[ShipName],
	[detail].[ShipAddress],
	[detail].[ShipCity],
	[detail].[ShipRegion],
	[detail].[ShipPostalCode],
	[detail].[ShipCountry]
FROM
	[Customers] [i]
		INNER JOIN [Orders] [detail] ON ([i].[CustomerID] = [detail].[CustomerID] OR [i].[CustomerID] IS NULL AND [detail].[CustomerID] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[i].[CustomerID]
FROM
	[Customers] [i]

