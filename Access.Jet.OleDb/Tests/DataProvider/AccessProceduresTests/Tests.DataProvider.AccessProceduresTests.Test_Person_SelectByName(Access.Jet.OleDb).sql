BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @firstName VarChar(6) -- AnsiString
SET     @firstName = 'Jürgen'
DECLARE @lastName VarChar(5) -- AnsiString
SET     @lastName = 'König'

Person_SelectByName

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @firstName VarWChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName VarWChar(5) -- String
SET     @lastName = 'König'

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = @firstName AND [t1].[LastName] = @lastName

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @firstName VarWChar(6) -- String
SET     @firstName = 'Jürgen'
DECLARE @lastName VarWChar(5) -- String
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
	[t1].[FirstName] = @firstName AND [t1].[LastName] = @lastName

BeforeExecute
DisposeTransaction
