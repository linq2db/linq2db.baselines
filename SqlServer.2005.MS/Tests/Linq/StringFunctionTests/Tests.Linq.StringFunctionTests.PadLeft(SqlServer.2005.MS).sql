BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	N'123' + CASE
		WHEN LEN([p].[FirstName] + N'.') > 7 THEN [p].[FirstName]
		ELSE Replicate(N' ', 6 - (LEN([p].[FirstName] + N'.') - 1)) + [p].[FirstName]
	END = N'123  John' AND
	[p].[PersonID] = 1

