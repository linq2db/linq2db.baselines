BeforeExecute
-- SqlServer.SA SqlServer.2019
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
	IIF(CharIndex(@p, [p].[LastName]) = 0, -1, Len([p].[LastName]) - CharIndex(N'p', Reverse([p].[LastName]))) = 2 AND
	[p].[PersonID] = 1

