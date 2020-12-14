BeforeExecute
-- Access AccessOleDb
DECLARE @param VarWChar(4) -- String
SET     @param = 'JOHN'
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
	(LCase([p].[FirstName]) = LCase(@param) OR LCase([p].[FirstName]) IS NULL AND LCase(@param) IS NULL) AND
	[p].[PersonID] = 1

