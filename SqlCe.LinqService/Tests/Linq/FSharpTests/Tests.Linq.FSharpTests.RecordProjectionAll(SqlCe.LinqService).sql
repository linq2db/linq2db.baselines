BeforeExecute
-- SqlCe

SELECT TOP (2)
	[p].[PersonID] as [ID],
	[p].[FirstName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

