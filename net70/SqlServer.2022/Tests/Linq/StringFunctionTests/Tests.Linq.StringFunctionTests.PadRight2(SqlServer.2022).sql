BeforeExecute
-- SqlServer.2022

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(LEN(REPLACE([p].[FirstName],' ','.')) > 6, [p].[FirstName], [p].[FirstName] + Replicate(N'*', 6 - LEN(REPLACE([p].[FirstName],' ','.')))) + N'123' = N'John**123' AND
	[p].[PersonID] = 1

