BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @s VarWChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE '%[[]%'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @s VarWChar(7) -- String
SET     @s = '123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE '%[[]%'

