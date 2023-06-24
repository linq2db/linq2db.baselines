BeforeExecute
-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Substring([p].[FirstName], LEN(REPLACE([p].[FirstName],' ','.')) - 2, 3) = 'ohn' AND
	[p].[PersonID] = 1

