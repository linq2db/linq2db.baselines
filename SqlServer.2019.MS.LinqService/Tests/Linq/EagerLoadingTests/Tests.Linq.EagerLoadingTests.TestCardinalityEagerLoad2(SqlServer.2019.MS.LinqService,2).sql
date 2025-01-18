BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[FK],
	[d].[FKD],
	[a_ObjectD].[Id],
	[a_ObjectD].[FK]
FROM
	[EntityMA] [m_1]
		INNER JOIN [EntityMB] [d] ON [m_1].[Id] = [d].[FK]
		LEFT JOIN [EntityMD] [a_ObjectD] ON [d].[FKD] = [a_ObjectD].[Id]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[FK],
	[t1].[Id]
FROM
	[EntityMA] [t1]

