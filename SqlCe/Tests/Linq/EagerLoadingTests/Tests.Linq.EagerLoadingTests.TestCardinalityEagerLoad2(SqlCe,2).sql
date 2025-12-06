-- SqlCe

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[FK],
	[d].[FKD],
	[a_ObjectD].[Id] as [cond],
	[a_ObjectD].[FK] as [FK_1]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]
		LEFT JOIN [EntityMD] [a_ObjectD] ON [d].[FKD] = [a_ObjectD].[Id]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FK],
	[t1].[Id] as [Id_1]
FROM
	[EntityMA] [t1]

