BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[CHAIN_ID] as [ElementId]
FROM
	(
		SELECT DISTINCT
			[a_Chain].[CHAIN_ID] as [Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[LINE_ID] as [Id]
				FROM
					[PUMPLINES] [t1]
			) [t2]
				INNER JOIN [PUMPLINE_CHAINS] [d] ON [t2].[Id] = [d].[LINE_ID]
				LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
	) [m_1]
		INNER JOIN [CHAINPOINTS] [d_1] ON [m_1].[Id] = [d_1].[CHAIN_ID]

BeforeExecute
-- SqlCe

SELECT
	[m_1].[LINE_ID] as [Id],
	[d].[LINE_ID] as [LineId],
	[d].[CHAIN_ID] as [ChainId],
	[a_Chain].[CHAIN_ID] as [cond],
	[a_Chain].[CHAIN_ID] as [Id_1]
FROM
	[PUMPLINES] [m_1]
		INNER JOIN [PUMPLINE_CHAINS] [d] ON [m_1].[LINE_ID] = [d].[LINE_ID]
		LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
ORDER BY
	[m_1].[LINE_ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[t1].[LINE_ID] as [Id],
	[t1].[LINE_ID] as [Id_1]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

