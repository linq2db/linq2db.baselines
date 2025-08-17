BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[Amount],
	[d].[Currency]
FROM
	[TransactionEntity] [m_1]
		INNER JOIN [LineEntity] [d] ON [m_1].[Id] = [d].[TransactionId]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[x].[Id],
	[x].[ValidOn]
FROM
	[TransactionEntity] [x]
ORDER BY
	[x].[ValidOn]

