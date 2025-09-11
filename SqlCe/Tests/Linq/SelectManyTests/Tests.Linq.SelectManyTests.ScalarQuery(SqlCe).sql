BeforeExecute
-- SqlCe

SELECT
	[p2].[PersonID] as [p2],
	[p1].[FirstName]
FROM
	[Person] [p1]
		CROSS JOIN [Person] [p2]
WHERE
	[p1].[PersonID] = [p2].[PersonID]

