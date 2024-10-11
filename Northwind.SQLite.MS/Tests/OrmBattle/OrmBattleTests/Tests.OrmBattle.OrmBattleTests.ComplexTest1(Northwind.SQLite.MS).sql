BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[ProductID],
	[m_1].[SupplierID],
	CASE
		WHEN [d_1].[Discontinued] = 0 THEN 1
		ELSE 0
	END,
	[d_1].[ProductID],
	[d_1].[ProductName],
	[d_1].[SupplierID],
	[d_1].[CategoryID],
	[d_1].[QuantityPerUnit],
	[d_1].[UnitPrice],
	[d_1].[UnitsInStock],
	[d_1].[UnitsOnOrder],
	[d_1].[ReorderLevel],
	[d_1].[Discontinued],
	CASE
		WHEN [d_1].[Discontinued] = 1 THEN 1
		ELSE 0
	END
FROM
	(
		SELECT DISTINCT
			[d].[ProductID],
			[t1].[SupplierID]
		FROM
			(
				SELECT DISTINCT
					[supplier].[SupplierID]
				FROM
					[Suppliers] [supplier]
			) [t1]
				CROSS JOIN [Products] [d]
	) [m_1]
		INNER JOIN ([Products] [d_1]
			LEFT JOIN [Suppliers] [a_Supplier] ON [d_1].[SupplierID] = [a_Supplier].[SupplierID])
		ON [d_1].[ProductID] = [m_1].[ProductID] AND [a_Supplier].[SupplierID] = [m_1].[SupplierID]

BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[SupplierID],
	[d].[ProductID]
FROM
	[Suppliers] [m_1]
		CROSS JOIN [Products] [d]

BeforeExecute
DisposeTransaction
BeforeExecute
-- Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[supplier].[SupplierID]
FROM
	[Suppliers] [supplier]

