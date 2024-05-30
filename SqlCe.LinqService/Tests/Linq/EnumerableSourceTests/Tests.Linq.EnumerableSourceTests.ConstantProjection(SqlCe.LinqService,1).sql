BeforeExecute
-- SqlCe

SELECT
	[p].[PersonID] as [Id],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

