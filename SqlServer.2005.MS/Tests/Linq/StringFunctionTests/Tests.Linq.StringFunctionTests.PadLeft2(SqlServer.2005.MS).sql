BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

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
		WHEN Len([p].[FirstName]) > 6 THEN [p].[FirstName]
		ELSE Replicate(N'*', 6 - Len([p].[FirstName])) + [p].[FirstName]
	END = N'123**John' AND
	[p].[PersonID] = 1

