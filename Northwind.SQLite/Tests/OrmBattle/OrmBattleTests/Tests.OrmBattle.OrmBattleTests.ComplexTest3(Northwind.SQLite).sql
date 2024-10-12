﻿BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- Northwind.SQLite SQLite.Classic SQLite

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
-- Northwind.SQLite SQLite.Classic SQLite

SELECT
	CASE
		WHEN [p].[Discontinued] = 0 THEN 1
		ELSE 0
	END,
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
	CASE
		WHEN [p].[Discontinued] = 1 THEN 1
		ELSE 0
	END,
	[a_Supplier].[SupplierID]
FROM
	[Products] [p]
		LEFT JOIN [Suppliers] [a_Supplier] ON [p].[SupplierID] = [a_Supplier].[SupplierID]

