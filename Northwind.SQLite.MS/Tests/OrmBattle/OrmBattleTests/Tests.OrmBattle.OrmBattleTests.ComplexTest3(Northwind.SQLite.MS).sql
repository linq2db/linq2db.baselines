BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[key_data_result].[SupplierID],
	[key_data_result].[ProductID],
	[detail].[CompanyName]
FROM
	(
		SELECT DISTINCT
			[a_Supplier].[SupplierID],
			[p].[ProductID]
		FROM
			[Products] [p]
				LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]
	) [key_data_result]
		INNER JOIN [Suppliers] [detail] ON [detail].[SupplierID] = [key_data_result].[SupplierID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel],
	[p].[Discontinued],
	[a_Supplier].[SupplierID]
FROM
	[Products] [p]
		LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]

