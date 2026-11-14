-- Access.LibRed.Mdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @FirstName VarChar(9) -- AnsiString
SET     @FirstName = 'new first'
DECLARE @MiddleName VarChar(10) -- AnsiString
SET     @MiddleName = 'new middle'
DECLARE @LastName VarChar(8) -- AnsiString
SET     @LastName = 'new last'
DECLARE @Gender Char -- AnsiStringFixedLength
SET     @Gender = 'U'

Person_Update

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
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

