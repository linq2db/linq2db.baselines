-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' OR [p].[LastName] = 'John'

-- Access.Ace.Odbc AccessODBC
DECLARE @firstName NVarChar(4) -- String
SET     @firstName = 'John'
DECLARE @firstName NVarChar(4) -- String
SET     @firstName = 'John'

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = ? OR [p].[LastName] = ?

