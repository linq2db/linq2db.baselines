BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123[456'
DECLARE @ps VarWChar(5) -- String
SET     @ps = '%[[]%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @ps

