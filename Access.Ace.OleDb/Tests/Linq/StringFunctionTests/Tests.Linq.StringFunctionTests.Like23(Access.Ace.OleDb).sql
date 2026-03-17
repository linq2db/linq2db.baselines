-- Access.Ace.OleDb AccessOleDb
DECLARE @pattern VarWChar(6) -- String
SET     @pattern = '%h~%n%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE @pattern AND [p].[PersonID] = 1

