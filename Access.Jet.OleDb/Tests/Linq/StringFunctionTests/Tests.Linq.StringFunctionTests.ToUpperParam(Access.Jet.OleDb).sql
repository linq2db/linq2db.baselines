BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @param VarWChar(4) -- String
SET     @param = 'JOHN'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	UCase([p].[FirstName]) = @param AND [p].[PersonID] = 1

