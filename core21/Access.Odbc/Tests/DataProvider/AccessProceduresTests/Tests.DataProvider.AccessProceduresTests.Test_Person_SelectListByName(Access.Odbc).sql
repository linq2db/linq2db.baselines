BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName VarChar(3) -- AnsiString
SET     @firstName = '%e%'
DECLARE @lastName VarChar(3) -- AnsiString
SET     @lastName = '%o%'

{ CALL Person_SelectListByName(?, ?) }

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName NVarChar(3) -- String
SET     @firstName = '%e%'
DECLARE @lastName NVarChar(3) -- String
SET     @lastName = '%o%'

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE ? AND [_].[LastName] LIKE ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName NVarChar(3) -- String
SET     @firstName = '%e%'
DECLARE @lastName NVarChar(3) -- String
SET     @lastName = '%o%'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE ? AND [_].[LastName] LIKE ?
ORDER BY
	[_].[PersonID]

