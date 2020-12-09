BeforeExecute
-- Access AccessOleDb
DECLARE @str_1 VarWChar(7) -- String
SET     @str_1 = '%o[%]h%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @str_1 AND [p].[PersonID] = 1

