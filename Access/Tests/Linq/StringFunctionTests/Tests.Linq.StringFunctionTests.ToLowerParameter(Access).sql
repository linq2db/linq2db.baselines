BeforeExecute
-- Access AccessOleDb
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
	LCase([p].[FirstName]) = LCase(@param) AND [p].[PersonID] = 1

