BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p].[PersonID] as [ID],
	[p].[FirstName],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
ORDER BY
	[p].[PersonID]

