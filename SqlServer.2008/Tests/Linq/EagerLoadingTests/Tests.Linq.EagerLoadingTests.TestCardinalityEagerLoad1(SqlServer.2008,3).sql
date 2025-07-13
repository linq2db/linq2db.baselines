BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2008

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectB].[Id]
		FROM
			[EntityA] [t1]
				INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectB].[Id],
	[a_ObjectB].[FK],
	[a_ObjectC].[Id],
	[a_ObjectC].[FK],
	[a_ObjectB].[Id]
FROM
	[EntityA] [t1]
		INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]
		LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectB].[FK] = [a_ObjectC].[Id]

