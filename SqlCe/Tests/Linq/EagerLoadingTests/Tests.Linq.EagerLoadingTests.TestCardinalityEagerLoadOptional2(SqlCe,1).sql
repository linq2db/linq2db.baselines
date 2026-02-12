-- SqlCe

SELECT
	[m_1].[Id],
	[m_1].[Item1],
	[d_1].[Id] as [Id_1],
	[d_1].[FK]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t1].[Id] as [Item1]
		FROM
			[EntityMA] [t1]
				INNER JOIN [EntityMB] [d] ON [t1].[Id] = [d].[FK]
	) [m_1]
		INNER JOIN [EntityMC] [d_1] ON [m_1].[Id] = [d_1].[FK]

-- SqlCe

SELECT
	[m_1].[Id] as [Item1],
	[d].[Id],
	[d].[FK],
	[d].[FKD],
	[d].[Id] as [Id_1]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]

-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FK],
	[t1].[Id] as [Id_1]
FROM
	[EntityMA] [t1]

