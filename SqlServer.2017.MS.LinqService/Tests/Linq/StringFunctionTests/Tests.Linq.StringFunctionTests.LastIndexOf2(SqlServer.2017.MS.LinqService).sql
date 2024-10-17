BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Len(N'123' + [p].[FirstName] + N'012345') - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'012345', 6, Len(N'123' + [p].[FirstName] + N'012345') - 5))) = 10 AND
	CharIndex(N'123', N'123' + [p].[FirstName] + N'012345', 6) <> 0

