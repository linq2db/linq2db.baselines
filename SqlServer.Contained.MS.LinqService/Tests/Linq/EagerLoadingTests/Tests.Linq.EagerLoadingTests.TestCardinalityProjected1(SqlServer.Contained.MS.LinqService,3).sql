BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectB].[Id]
		FROM
			[EntityA] [e]
				INNER JOIN [EntityB] [a_ObjectB] ON [e].[FK] = [a_ObjectB].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[e].[Id],
	[a_ObjectB].[Id],
	[a_ObjectC].[Id],
	[a_ObjectC].[FK]
FROM
	[EntityA] [e]
		INNER JOIN [EntityB] [a_ObjectB] ON [e].[FK] = [a_ObjectB].[Id]
		LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectB].[FK] = [a_ObjectC].[Id]

