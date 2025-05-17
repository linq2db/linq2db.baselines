BeforeExecute
-- SqlCe

SELECT
	Substring([p].[FirstName], LEN([p].[FirstName] + '.') - 1 - 2, 3) as [c1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

