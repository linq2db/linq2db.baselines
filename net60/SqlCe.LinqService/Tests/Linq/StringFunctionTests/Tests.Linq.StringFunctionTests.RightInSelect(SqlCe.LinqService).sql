BeforeExecute
-- SqlCe

SELECT
	Substring([p].[FirstName], LEN(REPLACE([p].[FirstName],' ','.')) - 2, 3)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

