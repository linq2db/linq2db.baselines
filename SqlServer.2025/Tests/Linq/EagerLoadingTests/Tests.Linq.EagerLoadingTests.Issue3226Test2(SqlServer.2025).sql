BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[m_1].[Id],
	[d].[Value]
FROM
	[Item] [m_1]
		INNER JOIN [ItemValue] [d] ON [m_1].[Id] = [d].[ItemId]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[x].[Id],
	[x].[Text]
FROM
	[Item] [x]

