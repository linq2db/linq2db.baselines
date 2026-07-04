-- SqlCe

SELECT
	Substring([p].[FirstName], LEN([p].[FirstName] + '.') - 3, 3)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

