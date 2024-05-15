BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
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
	Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName])) = 2 AND
	CharIndex(@p, [p].[LastName]) <> 0 AND [p].[PersonID] = 1

