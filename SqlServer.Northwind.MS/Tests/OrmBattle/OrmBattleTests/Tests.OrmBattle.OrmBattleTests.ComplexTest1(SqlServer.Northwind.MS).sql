BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[key_data_result].[ProductID],
	[key_data_result].[SupplierID],
	[__p].[ProductID],
	[__p].[ProductName],
	[__p].[SupplierID],
	[__p].[CategoryID],
	[__p].[QuantityPerUnit],
	[__p].[UnitPrice],
	[__p].[UnitsInStock],
	[__p].[UnitsOnOrder],
	[__p].[ReorderLevel],
	[__p].[Discontinued]
FROM
	(
		SELECT DISTINCT
			[detail].[ProductID],
			[supplier].[SupplierID]
		FROM
			[Suppliers] [supplier],
			[Products] [detail]
	) [key_data_result]
		INNER JOIN [Products] [__p]
			LEFT JOIN [Suppliers] [a_Supplier] ON [__p].[SupplierID] = [a_Supplier].[SupplierID]
		ON [__p].[ProductID] = [key_data_result].[ProductID] AND [a_Supplier].[SupplierID] = [key_data_result].[SupplierID]

BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[supplier].[SupplierID],
	[detail].[ProductID]
FROM
	[Suppliers] [supplier],
	[Products] [detail]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[supplier].[SupplierID]
FROM
	[Suppliers] [supplier]

