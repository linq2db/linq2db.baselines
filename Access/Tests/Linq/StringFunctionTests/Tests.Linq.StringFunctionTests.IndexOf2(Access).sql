BeforeExecute
-- Access AccessOleDb
DECLARE @p VarWChar(1) -- String
SET     @p = 'e'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	InStr(3, [p].[LastName], CVar(@p), 1) - 1 = 4 AND [p].[PersonID] = 2

