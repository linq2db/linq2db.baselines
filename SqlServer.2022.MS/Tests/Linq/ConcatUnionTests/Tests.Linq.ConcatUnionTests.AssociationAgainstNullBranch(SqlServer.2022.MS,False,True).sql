-- SqlServer.2022.MS SqlServer.2022
SELECT
	[p].[PersonID],
	NULL,
	NULL,
	NULL
FROM
	[Person] [p]
UNION ALL
SELECT
	[p_1].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p_1]
		LEFT JOIN [Patient] [a_Patient] ON [p_1].[PersonID] = [a_Patient].[PersonID]

