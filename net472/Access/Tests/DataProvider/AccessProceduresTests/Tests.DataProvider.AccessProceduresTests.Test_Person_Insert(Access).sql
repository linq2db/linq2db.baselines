BeforeExecute
-- Access AccessOleDb

SELECT TOP 1 
	[_].[PersonID]
FROM
	[Person] [_]
ORDER BY
	[_].[PersonID] DESC

BeforeExecute
-- Access AccessOleDb
DECLARE @firstName VarChar(9) -- AnsiString
SET     @firstName = 'new first'
DECLARE @midleName VarChar(10) -- AnsiString
SET     @midleName = 'new middle'
DECLARE @lastName VarChar(8) -- AnsiString
SET     @lastName = 'new last'
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = 'U'

Person_Insert

BeforeExecute
-- Access AccessOleDb
DECLARE @maxId Integer -- Int32
SET     @maxId = 4

SELECT TOP 2 
	[_].[FirstName], 
	[_].[PersonID], 
	[_].[LastName], 
	[_].[MiddleName], 
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] > @maxId

