BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @str_1 NVarChar(7) -- String
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
	[p].[FirstName] NOT LIKE ? AND [p].[PersonID] = 1

