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
		WHEN CharIndex(N'p', [p].[LastName]) = 0
			THEN -1
		ELSE Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName]))
	END = 2 AND
	[p].[PersonID] = 1

