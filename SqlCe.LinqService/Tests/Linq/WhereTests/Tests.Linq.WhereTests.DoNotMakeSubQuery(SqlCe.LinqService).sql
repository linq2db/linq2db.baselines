BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p2].[PersonID] as [ID],
	[p2].[FirstName] + '' as [Name]
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] = 1

