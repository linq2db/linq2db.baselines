BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (2)
	[e].[PersonID] as [ID],
	[e].[FirstName],
	[e].[LastName],
	[e].[FirstName] + ':' + [e].[LastName] as [MiddleName]
FROM
	[Person] [e]
WHERE
	[e].[PersonID] = 1

