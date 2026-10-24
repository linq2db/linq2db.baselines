-- Access.Ace.Odbc AccessODBC
DECLARE @firstName VarChar(3) -- AnsiString
SET     @firstName = '%e%'
DECLARE @lastName VarChar(3) -- AnsiString
SET     @lastName = '%o%'

{ CALL Person_SelectListByName(?, ?) }

-- Access.Ace.Odbc AccessODBC
DECLARE @firstName NVarChar(3) -- String
SET     @firstName = '%e%'
DECLARE @lastName NVarChar(3) -- String
SET     @lastName = '%o%'

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE ? AND [t1].[LastName] LIKE ?

-- Access.Ace.Odbc AccessODBC
DECLARE @firstName NVarChar(3) -- String
SET     @firstName = '%e%'
DECLARE @lastName NVarChar(3) -- String
SET     @lastName = '%o%'

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE ? AND [t1].[LastName] LIKE ?
ORDER BY
	[t1].[PersonID]

