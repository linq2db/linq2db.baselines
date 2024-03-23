BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(4) -- String
SET     @p = 'john'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	LCase([p].[FirstName]) = @p AND [p].[PersonID] = 1

