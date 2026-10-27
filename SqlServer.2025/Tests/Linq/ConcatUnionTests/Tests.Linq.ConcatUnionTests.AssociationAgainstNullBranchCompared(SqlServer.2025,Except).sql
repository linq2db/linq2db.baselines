-- SqlServer.2025
SELECT
	[p].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
EXCEPT
SELECT
	[p_1].[PersonID],
	NULL,
	NULL,
	NULL
FROM
	[Person] [p_1]

