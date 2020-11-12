BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName VarChar(6) -- AnsiString
SET     @firstName = 'Jürgen'
DECLARE @lastName VarChar(5) -- AnsiString
SET     @lastName = 'König'

{ CALL Person_SelectByName(?, ?) }

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName NVarChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName NVarChar(5) -- String
SET     @lastName = 'König'

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = ? AND [_].[LastName] = ?

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @firstName NVarChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName NVarChar(5) -- String
SET     @lastName = 'König'

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] = ? AND [_].[LastName] = ?

