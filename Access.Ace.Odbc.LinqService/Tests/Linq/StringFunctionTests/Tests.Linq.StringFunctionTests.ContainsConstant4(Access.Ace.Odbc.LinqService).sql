BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? LIKE '%[[]%'

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @s NVarChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? NOT LIKE '%[[]%'

