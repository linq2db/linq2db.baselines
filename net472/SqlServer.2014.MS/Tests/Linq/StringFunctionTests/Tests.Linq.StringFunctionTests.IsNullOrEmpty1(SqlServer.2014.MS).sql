BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	NOT ([p].[FirstName] IS NULL OR LEN(REPLACE([p].[FirstName],' ','.')) = 0) AND
	[p].[PersonID] = 1

