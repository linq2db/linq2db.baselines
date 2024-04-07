BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[CustomerID],
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
	[Customers] [c_1]
		INNER JOIN [Orders] [detail] ON ([c_1].[CustomerID] = [detail].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [detail].[CustomerID] IS NULL)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]

