BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[PersonID] as [ID],
	[p].[MiddleName],
	[p].[FirstName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

