BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @str VarWChar(7) -- String
SET     @str = '%o[%]h%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @str AND [p].[PersonID] = 1

