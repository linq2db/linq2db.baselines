BeforeExecute
-- SqlServer.2016

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(LEN([p].[FirstName] + N'.') > 7, [p].[FirstName], [p].[FirstName] + Replicate(N'*', 6 - (LEN([p].[FirstName] + N'.') - 1))) + N'123' = N'John**123' AND
	[p].[PersonID] = 1

