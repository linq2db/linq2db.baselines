BeforeExecute
-- Access AccessOleDb
DECLARE @s VarWChar(8) -- String
SET     @s = '123]]456'
DECLARE @toTest_1 VarWChar(4) -- String
SET     @toTest_1 = '%]]%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest_1

