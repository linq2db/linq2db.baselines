BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @s NVarChar(7) -- String
SET     @s = '123*456'
DECLARE @toTest NVarChar(5) -- String
SET     @toTest = '%[*]%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND ? LIKE ?

