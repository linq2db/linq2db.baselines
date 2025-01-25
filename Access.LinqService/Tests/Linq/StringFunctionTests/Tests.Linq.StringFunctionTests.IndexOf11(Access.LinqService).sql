BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(2) -- String
SET     @p = 'oh'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	InStr(1, [p].[FirstName], CVar(@p), 1) - 1 = 1 AND
	[p].[PersonID] = 1

