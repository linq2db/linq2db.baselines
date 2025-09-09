BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] % 2 = 1 AND [p].[PersonID] = 1

