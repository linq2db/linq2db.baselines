BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[SupplierID],
	[d].[CompanyName]
FROM
	(
		SELECT DISTINCT
			[p].[SupplierID]
		FROM
			[Products] [p]
	) [m_1],
	[Suppliers] [d]
		LEFT JOIN [Suppliers] [a_Supplier] ON [m_1].[SupplierID] = [a_Supplier].[SupplierID]
WHERE
	[d].[SupplierID] = [a_Supplier].[SupplierID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[p].[Discontinued],
	[p].[ProductID],
	[p].[ProductName],
	[p].[SupplierID],
	[p].[CategoryID],
	[p].[QuantityPerUnit],
	[p].[UnitPrice],
	[p].[UnitsInStock],
	[p].[UnitsOnOrder],
	[p].[ReorderLevel]
FROM
	[Products] [p]

