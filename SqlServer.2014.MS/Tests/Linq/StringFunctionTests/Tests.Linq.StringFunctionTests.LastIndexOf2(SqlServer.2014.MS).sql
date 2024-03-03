BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'012345'
FROM
	[Person] [p]
WHERE
	IIF(CharIndex(N'123', N'123' + [p].[FirstName] + N'012345', 6) = 0, -1, Len(N'123' + [p].[FirstName] + N'012345') - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'012345', 6, Len(N'123' + [p].[FirstName] + N'012345') - 5))) - 2) = 8 AND
	[p].[PersonID] = 1

