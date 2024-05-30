BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(1) -- String
SET     @p = 'p'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	Len([p].[LastName]) - CharIndex('p', Reverse([p].[LastName])) = 2 AND
	(CharIndex(@p, [p].[LastName]) <> 0 OR CharIndex(@p, [p].[LastName]) IS NULL) AND
	[p].[PersonID] = 1

