BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

