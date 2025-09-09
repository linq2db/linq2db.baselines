BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	[e].[Id],
	[a_ObjectBOptional].[Id],
	[a_ObjectBOptional].[Id],
	[a_ObjectCRequired].[Id],
	[a_ObjectCRequired].[FK]
FROM
	[EntityA] [e]
		LEFT JOIN [EntityB] [a_ObjectBOptional] ON [e].[FK] = [a_ObjectBOptional].[Id]
		LEFT JOIN [EntityC] [a_ObjectCRequired] ON [a_ObjectBOptional].[FK] = [a_ObjectCRequired].[Id]

