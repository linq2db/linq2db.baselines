-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName UniVarChar -- String
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

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1

DELETE FROM [xxPerson]
FROM
	[xxPerson] [t1]
WHERE
	[t1].[PersonID] = @ID

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

