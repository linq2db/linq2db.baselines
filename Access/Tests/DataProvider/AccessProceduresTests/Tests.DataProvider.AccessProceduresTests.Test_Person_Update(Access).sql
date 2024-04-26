﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Access AccessOleDb

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	'first name',
	'last name',
	'middle name',
	'F'
)

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	Count(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1
DECLARE @firstName VarChar(9) -- AnsiString
SET     @firstName = 'new first'
DECLARE @midleName VarChar(10) -- AnsiString
SET     @midleName = 'new middle'
DECLARE @lastName VarChar(8) -- AnsiString
SET     @lastName = 'new last'
DECLARE @gender Char(1) -- AnsiStringFixedLength
SET     @gender = 'U'

Person_Update

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
DisposeTransaction
