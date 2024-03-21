BeforeExecute
-- SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'123'

SELECT
	[p].[PersonID],
	N'123' + [p].[FirstName] + N'012345'
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND CASE
		WHEN CharIndex(@p, N'123' + [p].[FirstName] + N'012345', 6) = 0
			THEN -1
		ELSE Len(N'123' + [p].[FirstName] + N'012345') - CharIndex(N'321', Reverse(Substring(N'123' + [p].[FirstName] + N'012345', 6, Len(N'123' + [p].[FirstName] + N'012345') - 5))) - 2
	END = 8

