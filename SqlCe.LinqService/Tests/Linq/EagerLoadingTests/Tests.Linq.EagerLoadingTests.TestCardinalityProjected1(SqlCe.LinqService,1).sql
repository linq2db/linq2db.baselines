BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[e].[Id],
	[a_ObjectB].[Id] as [Id_1],
	[a_ObjectC].[Id] as [Id_2],
	[a_ObjectC].[FK]
FROM
	[EntityA] [e]
		INNER JOIN [EntityB] [a_ObjectB] ON [e].[FK] = [a_ObjectB].[Id]
		LEFT JOIN [EntityC] [a_ObjectC] ON [a_ObjectB].[FK] = [a_ObjectC].[Id]

