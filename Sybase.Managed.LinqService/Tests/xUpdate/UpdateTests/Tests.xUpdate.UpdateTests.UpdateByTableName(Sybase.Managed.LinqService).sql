BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'xxPerson') IS NOT NULL)
	DROP TABLE [xxPerson]

BeforeExecute
-- Sybase.Managed Sybase

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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @FirstName UniVarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName UniVarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName UniVarChar(4) -- String
SET     @MiddleName = 'None'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 1

UPDATE
	[xxPerson]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName,
	[Gender] = @Gender
WHERE
	[xxPerson].[PersonID] = @ID

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [xxPerson]

