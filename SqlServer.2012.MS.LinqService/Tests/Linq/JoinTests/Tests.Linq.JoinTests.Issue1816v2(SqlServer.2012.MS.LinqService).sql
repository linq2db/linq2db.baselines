BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[v].[inId],
	[t].[inIdState],
	[a_Main].[inIdType]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON [t].[inIdType] = [a_Main].[inIdType]

