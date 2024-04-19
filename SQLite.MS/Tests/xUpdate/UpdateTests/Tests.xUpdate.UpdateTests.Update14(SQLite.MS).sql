BeforeExecute
-- SQLite.MS SQLite
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

BeforeExecute
-- SQLite.MS SQLite

UPDATE
	[Person]
SET
	[LastName] = CAST(12 AS NVarChar(11))
WHERE
	[Person].[FirstName] LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%' ESCAPE '~'

