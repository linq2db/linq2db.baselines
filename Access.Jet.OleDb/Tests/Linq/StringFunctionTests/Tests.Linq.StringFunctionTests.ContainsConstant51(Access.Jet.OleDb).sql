-- Access.Jet.OleDb AccessOleDb
DECLARE @ps VarWChar(5) -- String
SET     @ps = '%[[]%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND '123[456' LIKE @ps

