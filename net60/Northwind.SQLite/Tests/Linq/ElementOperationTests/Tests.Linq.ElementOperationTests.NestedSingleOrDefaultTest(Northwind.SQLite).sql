BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[CustomerID],
	[detail].[ShipCountry],
	[detail].[ShipPostalCode],
	[detail].[ShipRegion],
	[detail].[ShipCity],
	[detail].[ShipAddress],
	[detail].[ShipName],
	[detail].[Freight],
	[detail].[ShipVia],
	[detail].[ShippedDate],
	[detail].[RequiredDate],
	[detail].[OrderDate],
	[detail].[EmployeeID],
	[detail].[CustomerID],
	[detail].[OrderID]
FROM
	[Customers] [c_1]
		INNER JOIN [Orders] [detail] ON ([c_1].[CustomerID] = [detail].[CustomerID] OR [c_1].[CustomerID] IS NULL AND [detail].[CustomerID] IS NULL)

BeforeExecute
RollbackTransaction
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	[c_1].[CustomerID]
FROM
	[Customers] [c_1]

