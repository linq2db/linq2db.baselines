BeforeExecute
-- SqlCe

SELECT
	[e].[Id],
	[a_ObjectBOptional].[Id] as [Id_1],
	[a_ObjectBOptional].[Id] as [Id_2],
	[a_ObjectC].[Id] as [Id_3],
	[a_ObjectC].[FK]
FROM
	[EntityA] [e]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [e].[FK] = [a_ObjectBOptional].[Id]
		LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectBOptional].[FK] = [a_ObjectC].[Id]

