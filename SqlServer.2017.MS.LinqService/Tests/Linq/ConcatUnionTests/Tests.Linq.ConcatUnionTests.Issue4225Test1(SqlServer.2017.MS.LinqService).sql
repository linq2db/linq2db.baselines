BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender],
	NULL,
	NULL
FROM
	[Person] [x]
UNION ALL
SELECT
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	[x_1].[PersonID],
	[x_1].[Diagnosis]
FROM
	[Patient] [x_1]

