-- Access.Jet.Odbc AccessODBC
DECLARE @firstName VarChar(6) -- AnsiString
SET     @firstName = 'Jürgen'
DECLARE @lastName VarChar(5) -- AnsiString
SET     @lastName = 'König'

{ CALL Person_SelectByName(?, ?) }

-- Access.Jet.Odbc AccessODBC
DECLARE @firstName NVarChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName NVarChar(5) -- String
SET     @lastName = 'König'

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = ? AND [t1].[LastName] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @firstName NVarChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName NVarChar(5) -- String
SET     @lastName = 'König'

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = ? AND [t1].[LastName] = ?

