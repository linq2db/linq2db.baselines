BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectB].[Id] as [Id_1],
	[a_ObjectB].[FK] as [FK_1],
	[a_ObjectC].[Id] as [cond],
	[a_ObjectC].[FK] as [FK_2]
FROM
	[EntityA] [t1]
		INNER JOIN [EntityB] [a_ObjectB] ON [t1].[FK] = [a_ObjectB].[Id]
		LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectB].[FK] = [a_ObjectC].[Id]

