BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @firstName NVarChar(255) -- String
SET     @firstName = 'John'
DECLARE @firstName NVarChar(255) -- String
SET     @firstName = 'John'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = ? OR [p].[LastName] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
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

