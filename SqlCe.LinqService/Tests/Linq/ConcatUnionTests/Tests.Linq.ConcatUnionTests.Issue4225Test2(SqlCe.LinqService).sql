BeforeExecute
-- SqlCe

SELECT
	[x].[FirstName],
	[x].[PersonID] as [ID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender],
	NULL as [PersonID],
	NULL as [Diagnosis]
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL as [FirstName],
	NULL as [ID],
	NULL as [LastName],
	NULL as [MiddleName],
	NULL as [Gender],
	[x_1].[PersonID],
	[x_1].[Diagnosis]
FROM
	[Patient] [x_1]

