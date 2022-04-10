BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123n456'
DECLARE @toTest_1 NVarChar(3) -- String
SET     @toTest_1 = '%n%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? LIKE ?

