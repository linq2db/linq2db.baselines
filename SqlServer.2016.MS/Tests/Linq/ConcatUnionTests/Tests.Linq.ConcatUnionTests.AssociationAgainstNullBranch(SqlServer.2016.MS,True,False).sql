-- SqlServer.2016.MS SqlServer.2016
SELECT
	[p].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
UNION
SELECT
	[p_1].[PersonID],
	NULL,
	NULL,
	NULL
FROM
	[Person] [p_1]

