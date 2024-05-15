BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? LIKE '%n%'

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? NOT LIKE '%n%'

