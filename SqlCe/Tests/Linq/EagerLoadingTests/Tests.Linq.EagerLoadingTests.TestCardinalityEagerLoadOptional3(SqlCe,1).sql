BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[FK],
	[a_ObjectBOptional].[Id] as [cond],
	[a_ObjectBOptional].[FK] as [FK_1],
	[a_ObjectCRequired].[Id] as [cond_1],
	[a_ObjectCRequired].[FK] as [FK_2]
FROM
	[EntityA] [t1]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [t1].[FK] = [a_ObjectBOptional].[Id]
		LEFT JOIN [EntityC] [a_ObjectCRequired] ON [a_ObjectBOptional].[FK] = [a_ObjectCRequired].[Id]

