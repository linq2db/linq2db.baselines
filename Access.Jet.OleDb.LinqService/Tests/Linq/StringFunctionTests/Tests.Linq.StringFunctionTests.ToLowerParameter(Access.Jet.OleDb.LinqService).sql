BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
DECLARE @param VarWChar(4) -- String
SET     @param = 'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) = @param AND [p].[PersonID] = 1

