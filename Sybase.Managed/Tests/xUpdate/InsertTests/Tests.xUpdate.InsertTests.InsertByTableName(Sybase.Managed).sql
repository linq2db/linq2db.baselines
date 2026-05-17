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

SELECT @@IDENTITY

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

SELECT @@IDENTITY

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[xxPerson] [p]
WHERE
	[p].[FirstName] = 'Steven' AND [p].[LastName] = 'King' AND
	[p].[Gender] = 'M'

