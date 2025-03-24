﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
--  Northwind.SQLite.MS SQLite.MS SQLite

SELECT
	[m_1].[SupplierID],
	[d].[CompanyName]
FROM
	(
		SELECT DISTINCT
			[a_Supplier].[SupplierID]
		FROM
			[Products] [p]
				LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]
	) [m_1]
		INNER JOIN [Suppliers] [d] ON [d].[SupplierID] = [m_1].[SupplierID]

BeforeExecute
DisposeTransaction
BeforeExecute
--  Northwind.SQLite.MS SQLite.MS SQLite

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
	[p].[ReorderLevel],
	[a_Supplier].[SupplierID]
FROM
	[Products] [p]
		LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]

