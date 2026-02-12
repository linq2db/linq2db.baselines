-- SqlServer.2005.MS SqlServer.2005

SELECT
	[m_1].[cond],
	[m_1].[cond],
	[d].[Id],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectBOptional].[Id] as [cond]
		FROM
			[EntityA] [t1]
				LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[cond] = [d].[FK]

-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[FK],
	[a_ObjectBOptional].[Id]
FROM
	[EntityA] [t1]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id]

