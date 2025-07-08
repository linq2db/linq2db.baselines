BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[CategoryID],
	[d].[ProductID],
	[d].[ProductName],
	[d].[CategoryID],
	[d].[QuantityPerUnit]
FROM
	[Categories] [m_1]
		INNER JOIN [Products] [d] ON [m_1].[CategoryID] = [d].[CategoryID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

