BeforeExecute
-- SqlServer.2012

SELECT
	[p].[PersonID],
	IIF([p].[FirstName] IS NULL, N'None', [p].[FirstName]),
	IIF([p].[MiddleName] IS NULL, N'None', [p].[MiddleName])
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

