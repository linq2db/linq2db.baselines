BeforeExecute
-- SqlServer.2005

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN LEN([p].[FirstName] + N'.') > 7 THEN [p].[FirstName]
		ELSE [p].[FirstName] + Replicate(N' ', 6 - (LEN([p].[FirstName] + N'.') - 1))
	END + N'123' = N'John  123' AND
	[p].[PersonID] = 1

