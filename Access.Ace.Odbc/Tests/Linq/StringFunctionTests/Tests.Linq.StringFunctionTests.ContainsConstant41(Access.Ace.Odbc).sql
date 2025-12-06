-- Access.Ace.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'
DECLARE @ps NVarChar(5) -- String
SET     @ps = '%[[]%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? LIKE ?

