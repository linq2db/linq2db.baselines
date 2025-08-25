BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id] as [Id_2],
	[d_1].[FK]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					[EntityMA] [t1]
			) [t2]
				INNER JOIN [EntityMB] [d] ON [t2].[Id] = [d].[FK]
	) [m_1]
		INNER JOIN [EntityMC] [d_1] ON [m_1].[Id] = [d_1].[FK]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[m_1].[Id],
	[d].[Id] as [Id_1],
	[d].[FK],
	[d].[FKD],
	[d].[Id] as [Id_2],
	[a_ObjectD].[Id] as [cond],
	[a_ObjectD].[FK] as [FK_1]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]
		LEFT JOIN [EntityMD] [a_ObjectD] ON [d].[FKD] = [a_ObjectD].[Id]

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[Id],
	[t1].[FK],
	[t1].[Id] as [Id_1]
FROM
	[EntityMA] [t1]

