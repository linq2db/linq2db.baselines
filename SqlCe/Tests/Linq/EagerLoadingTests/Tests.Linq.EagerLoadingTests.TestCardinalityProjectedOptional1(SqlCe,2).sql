BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectBOptional].[Id]
		FROM
			[EntityA] [e]
				LEFT JOIN [EntityB] [a_ObjectBOptional] ON [e].[FK] = [a_ObjectBOptional].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK] OR [m_1].[Id] IS NULL AND [d].[FK] IS NULL

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe

SELECT
	[e].[Id],
	[a_ObjectBOptional].[Id] as [Id_1],
	[a_ObjectBOptional].[Id] as [Id_2]
FROM
	[EntityA] [e]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [e].[FK] = [a_ObjectBOptional].[Id]

