BeforeExecute
-- SqlServer.2005
DECLARE @p NVarChar(4000) -- String
SET     @p = N'p'

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
		WHEN CharIndex(@p, [p].[LastName]) = 0 THEN -1
		ELSE Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName]))
	END = 2 AND
	[p].[PersonID] = 1

