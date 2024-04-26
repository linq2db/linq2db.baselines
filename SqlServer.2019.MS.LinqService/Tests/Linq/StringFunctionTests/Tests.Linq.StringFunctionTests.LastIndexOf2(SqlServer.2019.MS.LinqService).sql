BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND Len(N'123' + [p].[FirstName] + N'012345') - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'012345', 6, Len(N'123' + [p].[FirstName] + N'012345') - 5))) = 10 AND
	(CharIndex(@p, N'123' + [p].[FirstName] + N'012345', 6) <> 0 OR CharIndex(@p, N'123' + [p].[FirstName] + N'012345', 6) IS NULL)

