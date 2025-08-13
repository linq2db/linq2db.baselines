BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%[[]%'

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @s VarWChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%[[]%'

