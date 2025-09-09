BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[p2].[PersonID] as [p2],
	[p1].[FirstName]
FROM
	[Person] [p1],
	[Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID]

