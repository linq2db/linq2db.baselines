BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF(LEN([p].[FirstName] + N'.') = 1, 1, 0)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

