BeforeExecute
-- SqlCe

SELECT
	[p2].[PersonID] as [p2],
	[t1].[FirstName]
FROM
	[Person] [t1],
	[Person] [p2]
WHERE
	[t1].[PersonID] = [p2].[PersonID]

