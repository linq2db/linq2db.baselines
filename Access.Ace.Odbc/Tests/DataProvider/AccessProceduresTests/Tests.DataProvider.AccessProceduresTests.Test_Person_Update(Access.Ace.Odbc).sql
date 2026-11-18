-- Access.Ace.Odbc AccessODBC
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

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @FirstName VarChar(9) -- AnsiString
SET     @FirstName = 'new first'
DECLARE @MiddleName VarChar(10) -- AnsiString
SET     @MiddleName = 'new middle'
DECLARE @LastName VarChar(8) -- AnsiString
SET     @LastName = 'new last'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'U'

{ CALL Person_Update(?, ?, ?, ?, ?) }

-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
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
	[t1].[PersonID] = ?

