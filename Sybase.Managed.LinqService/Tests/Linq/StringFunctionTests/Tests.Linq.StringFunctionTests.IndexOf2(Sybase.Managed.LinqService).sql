BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p UniVarChar(1) -- String
SET     @p = 'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	CharIndex(@p, Substring([p].[LastName], 3, Len([p].[LastName]))) + 1 = 4 AND
	[p].[PersonID] = 2

