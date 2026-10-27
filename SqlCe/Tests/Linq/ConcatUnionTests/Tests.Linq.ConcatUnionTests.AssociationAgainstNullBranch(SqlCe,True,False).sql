-- SqlCe
SELECT
	[p].[PersonID],
	[a_Patient].[PersonID] as [PersonID_1],
	[a_Patient].[PersonID] as [PersonID_2],
	[a_Patient].[Diagnosis]
FROM
	[Person] [p]
		LEFT JOIN [Patient] [a_Patient] ON [p].[PersonID] = [a_Patient].[PersonID]
UNION
SELECT
	[p_1].[PersonID],
	NULL as [PersonID_1],
	NULL as [PersonID_2],
	NULL as [Diagnosis]
FROM
	[Person] [p_1]

