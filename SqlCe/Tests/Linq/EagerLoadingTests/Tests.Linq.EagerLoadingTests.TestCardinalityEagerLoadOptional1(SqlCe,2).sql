-- SqlCe

SELECT
	[m_1].[Id],
	[m_1].[Id] as [Id_1],
	[d].[Id] as [Id_2],
	[d].[FK]
FROM
	(
		SELECT DISTINCT
			[a_ObjectBOptional].[Id]
		FROM
			[EntityA] [t1]
				LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectBOptional].[Id] as [Id_1],
	[a_ObjectBOptional].[FK] as [FK_1],
	[a_ObjectBOptional].[Id] as [Id_2]
FROM
	[EntityA] [t1]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id]

