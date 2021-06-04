BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123#456'
DECLARE @toTest_1 NVarChar(5) -- String
SET     @toTest_1 = '%[#]%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? LIKE ?

