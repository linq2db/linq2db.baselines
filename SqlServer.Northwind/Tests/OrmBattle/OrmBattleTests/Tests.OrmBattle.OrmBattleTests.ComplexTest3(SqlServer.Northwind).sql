BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Northwind SqlServer.2019

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
