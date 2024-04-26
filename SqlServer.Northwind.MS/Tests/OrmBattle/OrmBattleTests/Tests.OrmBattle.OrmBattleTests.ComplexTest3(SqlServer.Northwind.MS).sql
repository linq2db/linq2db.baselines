﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

SELECT
	[m_1].[SupplierID],
	[d].[CompanyName]
FROM
	(
		SELECT DISTINCT
			[a_Supplier].[SupplierID]
		FROM
			[Products] [p]
				LEFT JOIN [Suppliers] [a_Supplier] ON ([p].[SupplierID] = [a_Supplier].[SupplierID] OR [p].[SupplierID] IS NULL AND [a_Supplier].[SupplierID] IS NULL)
	) [m_1]
		INNER JOIN [Suppliers] [d] ON [d].[SupplierID] = [m_1].[SupplierID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Northwind.MS SqlServer.2019

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
		LEFT JOIN [Suppliers] [a_Supplier] ON ([p].[SupplierID] = [a_Supplier].[SupplierID] OR [p].[SupplierID] IS NULL AND [a_Supplier].[SupplierID] IS NULL)

