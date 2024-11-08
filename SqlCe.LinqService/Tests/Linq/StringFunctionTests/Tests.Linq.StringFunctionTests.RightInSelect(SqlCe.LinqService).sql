BeforeExecute
-- SqlCe

SELECT
	Substring([p].[FirstName], Len([p].[FirstName]) - 2, 3) as [c1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

