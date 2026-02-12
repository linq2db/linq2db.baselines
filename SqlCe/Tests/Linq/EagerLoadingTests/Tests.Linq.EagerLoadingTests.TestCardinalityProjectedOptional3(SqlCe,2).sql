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
			[EntityA] [e]
				LEFT JOIN [EntityB] [a_ObjectBOptional] ON [e].[FK] = [a_ObjectBOptional].[Id]
	) [m_1]
		INNER JOIN [EntityD] [d] ON [m_1].[Id] = [d].[FK]

-- SqlCe

SELECT
	[e].[Id],
	[a_ObjectBOptional].[Id] as [Id_1],
	[a_ObjectBOptional].[Id] as [Id_2]
FROM
	[EntityA] [e]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [e].[FK] = [a_ObjectBOptional].[Id]

