BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[CategoryID],
	[d].[ProductID],
	[d].[ProductName],
	[d].[CategoryID] as [CategoryID_1],
	[d].[QuantityPerUnit]
FROM
	[Categories] [m_1]
		INNER JOIN [Products] [d] ON [m_1].[CategoryID] = [d].[CategoryID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[CategoryID],
	[t1].[CategoryName],
	[t1].[Description]
FROM
	[Categories] [t1]

