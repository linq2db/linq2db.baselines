BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName UniVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName UniVarChar -- String
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
-- Sybase.Managed Sybase
DECLARE @name UniVarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Integer -- Int32
SET     @idx = 4

UPDATE
	[Person]
SET
	[_].[LastName] = Convert(NVarChar(11), Len(@name) + @idx)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Person]
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%' ESCAPE '~'

