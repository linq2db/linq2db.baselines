-- Access.Ace.Odbc AccessODBC
DECLARE @pattern NVarChar(6) -- String
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
	[p].[FirstName] NOT LIKE ? AND [p].[PersonID] = 1

