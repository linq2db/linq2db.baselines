BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
DECLARE @str VarWChar(4) -- String
SET     @str = '%oh%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE @str AND [p].[PersonID] = 1

