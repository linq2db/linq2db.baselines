BeforeExecute
-- SqlCe

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID] as [Item1],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

