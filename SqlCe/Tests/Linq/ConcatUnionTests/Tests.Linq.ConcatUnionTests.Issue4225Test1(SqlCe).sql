-- SqlCe

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender],
	NULL as [PersonID_1],
	NULL as [Diagnosis]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL as [FirstName],
	NULL as [PersonID],
	NULL as [LastName],
	NULL as [MiddleName],
	NULL as [Gender],
	[x_1].[PersonID] as [PersonID_1],
	[x_1].[Diagnosis]
FROM
	[Patient] [x_1]

