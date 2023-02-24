BeforeExecute
-- Access AccessOleDb
DECLARE @str_1 VarWChar(4) -- String
SET     @str_1 = '%oh%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @str_1 AND [p].[PersonID] = 1

