BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[t1].[PersonID] as [ID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = 1

