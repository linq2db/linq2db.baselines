BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 1
	[t1].[PersonID]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID] DESC

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @firstName VarChar(9) -- AnsiString
SET     @firstName = 'new first'
DECLARE @midleName VarChar(10) -- AnsiString
SET     @midleName = 'new middle'
DECLARE @lastName VarChar(8) -- AnsiString
SET     @lastName = 'new last'
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = 'U'

{ CALL Person_Insert(?, ?, ?, ?) }

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @maxId Int -- Int32
SET     @maxId = 4

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > ?

BeforeExecute
DisposeTransaction
