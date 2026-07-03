-- SqlCe

SELECT
	[p2].[PersonID],
	[p2].[FirstName] + '' as [Name]
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] = 1

