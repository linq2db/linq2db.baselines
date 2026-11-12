-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @FirstName NVarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [xxPerson]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1

DELETE FROM
	[xxPerson] [t1]
WHERE
	[t1].[PersonID] = @ID

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

