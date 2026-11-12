-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[t1].[PersonID]
FROM
	[Person] [t1]
ORDER BY
	[t1].[PersonID] DESC

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @FirstName VarChar(9) -- AnsiString
SET     @FirstName = 'new first'
DECLARE @MiddleName VarChar(10) -- AnsiString
SET     @MiddleName = 'new middle'
DECLARE @LastName VarChar(8) -- AnsiString
SET     @LastName = 'new last'
DECLARE @Gender Char -- AnsiStringFixedLength
SET     @Gender = 'U'

Person_Insert

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @maxId  -- Int32
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
	[t1].[PersonID] > @maxId

