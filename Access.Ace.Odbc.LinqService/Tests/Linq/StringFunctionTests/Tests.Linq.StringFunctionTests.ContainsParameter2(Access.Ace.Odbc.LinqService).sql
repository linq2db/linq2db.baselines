BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @str NVarChar(7) -- String
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
	[p].[FirstName] NOT LIKE ? AND [p].[PersonID] = 1

