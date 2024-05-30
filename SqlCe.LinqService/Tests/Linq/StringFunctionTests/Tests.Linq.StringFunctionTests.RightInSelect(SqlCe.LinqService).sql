BeforeExecute
-- SqlCe

SELECT
	SUBSTRING([p].[FirstName], LEN([p].[FirstName]) - 2, 3) as [c1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

