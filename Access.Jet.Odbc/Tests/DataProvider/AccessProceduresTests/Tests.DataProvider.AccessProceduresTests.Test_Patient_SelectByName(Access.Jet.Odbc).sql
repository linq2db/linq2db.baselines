-- Access.Jet.Odbc AccessODBC
DECLARE @firstName VarChar(6) -- AnsiString
SET     @firstName = 'Tester'
DECLARE @lastName VarChar(9) -- AnsiString
SET     @lastName = 'Testerson'

{ CALL Patient_SelectByName(?, ?) }

-- Access.Jet.Odbc AccessODBC
DECLARE @firstName NVarChar(6) -- String
SET     @firstName = 'Tester'
DECLARE @lastName NVarChar(9) -- String
SET     @lastName = 'Testerson'

SELECT
	COUNT(*)
FROM
	[Patient] [t1]
		INNER JOIN [Person] [a_Person] ON ([t1].[PersonID] = [a_Person].[PersonID])
WHERE
	[a_Person].[FirstName] = ? AND [a_Person].[LastName] = ?

-- Access.Jet.Odbc AccessODBC
DECLARE @firstName NVarChar(6) -- String
SET     @firstName = 'Tester'
DECLARE @lastName NVarChar(9) -- String
SET     @lastName = 'Testerson'

SELECT
	[a_Person].[PersonID],
	[a_Person].[FirstName],
	[a_Person].[LastName],
	[a_Person].[MiddleName],
	[a_Person].[Gender],
	[t1].[Diagnosis]
FROM
	[Patient] [t1]
		INNER JOIN [Person] [a_Person] ON ([t1].[PersonID] = [a_Person].[PersonID])
WHERE
	[a_Person].[FirstName] = ? AND [a_Person].[LastName] = ?
ORDER BY
	[a_Person].[PersonID]

