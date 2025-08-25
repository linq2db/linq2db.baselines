BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[v].[inId] as [InId],
	[t].[inIdState] as [InIdState],
	[a_Main].[inIdType] as [InIdType]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON [t].[inIdType] = [a_Main].[inIdType]

