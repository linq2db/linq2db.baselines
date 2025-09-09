BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'xxPerson') IS NOT NULL)
	DROP TABLE [xxPerson]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [xxPerson]
(
	[FirstName]  NVarChar(255)          NOT NULL,
	[PersonID]   Int           IDENTITY NOT NULL,
	[LastName]   NVarChar(255)          NOT NULL,
	[MiddleName] NVarChar(255)              NULL,
	[Gender]     Char(1)                NOT NULL,

	CONSTRAINT [PK_xxPerson] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
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

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [p]
WHERE
	[p].[FirstName] = 'Steven' AND [p].[LastName] = 'King' AND
	[p].[Gender] = 'M'

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [xxPerson]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'xxPerson') IS NOT NULL)
	DROP TABLE [xxPerson]

