BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[PersonID] as [ID],
	[p].[FirstName],
	[p].[MiddleName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

