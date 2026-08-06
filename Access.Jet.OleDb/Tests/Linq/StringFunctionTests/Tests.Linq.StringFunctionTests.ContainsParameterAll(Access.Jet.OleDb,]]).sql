-- Access.Jet.OleDb AccessOleDb
DECLARE @s VarWChar(8) -- String
SET     @s = '123]]456'
DECLARE @toTest VarWChar(4) -- String
SET     @toTest = '%]]%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest

