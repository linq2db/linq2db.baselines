BeforeExecute
-- SqlServer.2017

SELECT
	IIF(([p].[FirstName] IS NULL OR LEN(REPLACE([p].[FirstName],' ','.')) = 0), 1, 0)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

