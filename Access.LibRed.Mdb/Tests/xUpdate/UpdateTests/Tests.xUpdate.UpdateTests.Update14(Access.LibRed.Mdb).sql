-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @FirstName NVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
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
DECLARE @name  -- Int32
SET     @name = 8
DECLARE @idx  -- Int32
SET     @idx = 4

UPDATE
	[Person] [t1]
SET
	[t1].[LastName] = CStr(@name + @idx)
WHERE
	[t1].[FirstName] LIKE 'Update14%'

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] LIKE 'Update14%'

