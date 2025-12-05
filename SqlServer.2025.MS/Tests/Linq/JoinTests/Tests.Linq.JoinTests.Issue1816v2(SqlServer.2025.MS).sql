-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[v].[inId],
	[t].[inIdState],
	[a_Main].[inIdType]
FROM
	[stVersions] [v]
		INNER JOIN [stMain] [a_Main] ON [v].[inIdMain] = [a_Main].[inId]
		LEFT JOIN [rlStatesTypesAndUserGroups] [t] ON [t].[inIdType] = [a_Main].[inIdType]

