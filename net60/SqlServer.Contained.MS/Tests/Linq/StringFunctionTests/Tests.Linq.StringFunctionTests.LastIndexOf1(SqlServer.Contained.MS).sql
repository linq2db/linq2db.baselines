BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	IIF(CharIndex(N'p', [p].[LastName]) = 0, -1, LEN(REPLACE([p].[LastName],' ','.')) - CharIndex(N'p', Reverse([p].[LastName]))) = 2 AND
	[p].[PersonID] = 1

