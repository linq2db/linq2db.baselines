BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @param VarWChar(4) -- String
SET     @param = 'test'

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[LastName] = @param

