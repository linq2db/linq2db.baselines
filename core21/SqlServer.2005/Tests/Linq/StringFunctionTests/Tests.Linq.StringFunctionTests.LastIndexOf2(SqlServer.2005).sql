BeforeExecute
-- SqlServer.2005

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	CASE
		WHEN CharIndex(N'123', N'123' + [p].[FirstName] + N'012345', 6) = 0
			THEN -1
		ELSE Len(N'123' + [p].[FirstName] + N'012345') - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'012345', 6, Len(N'123' + [p].[FirstName] + N'012345') - 5))) - 2
	END = 8 AND
	[p].[PersonID] = 1

