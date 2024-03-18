BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

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
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[i].[CustomerID]
FROM
	[Customers] [i]

