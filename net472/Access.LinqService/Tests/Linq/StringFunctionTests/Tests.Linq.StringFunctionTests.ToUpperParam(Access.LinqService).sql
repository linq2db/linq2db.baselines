BeforeExecute
-- Access AccessOleDb
DECLARE @param VarWChar(4) -- String
SET     @param = 'john'
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
	(UCase([p].[FirstName]) = UCase(@param) OR UCase([p].[FirstName]) IS NULL AND UCase(@param) IS NULL) AND [p].[PersonID] = 1

