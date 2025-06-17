BeforeExecute
-- SqlCe

SELECT
	Substring([p].[FirstName], LEN([p].[FirstName] + '.') - 3, 3) as [c1]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

