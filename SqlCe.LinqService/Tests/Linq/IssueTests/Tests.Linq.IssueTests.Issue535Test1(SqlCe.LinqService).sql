BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (1)
	[p].[PersonID] as [ID],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'J%' ESCAPE '~' AND ([p].[PersonID] = 1 OR [p].[LastName] = 'fail')

