BeforeExecute
-- Access AccessOleDb
DECLARE @param_1 VarWChar(4) -- String
SET     @param_1 = 'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) = @param_1 AND [p].[PersonID] = 1

