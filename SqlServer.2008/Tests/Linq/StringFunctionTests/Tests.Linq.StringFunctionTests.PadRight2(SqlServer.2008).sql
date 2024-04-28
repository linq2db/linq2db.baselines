BeforeExecute
-- SqlServer.2008

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
		WHEN Len([p].[FirstName]) > 6 THEN [p].[FirstName]
		ELSE [p].[FirstName] + Replicate(N'*', 6 - Len([p].[FirstName]))
	END + N'123' = N'John**123' AND
	[p].[PersonID] = 1

