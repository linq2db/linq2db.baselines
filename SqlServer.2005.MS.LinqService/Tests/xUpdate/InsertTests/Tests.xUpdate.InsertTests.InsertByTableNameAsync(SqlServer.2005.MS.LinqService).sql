BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

CREATE TABLE [xxPerson]
(
	[FirstName]  NVarChar(4000)  NOT NULL,
	[PersonID]   Int             NOT NULL IDENTITY,
	[LastName]   NVarChar(4000)  NOT NULL,
	[MiddleName] NVarChar(4000)      NULL,
	[Gender]     Char(1)         NOT NULL,

	CONSTRAINT [PK_xxPerson] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Steven'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'King'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

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
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Steven'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'King'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Steven'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'King'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [p]
WHERE
	[p].[FirstName] = N'Steven' AND [p].[LastName] = N'King' AND
	[p].[Gender] = 'M'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

DROP TABLE [xxPerson]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[xxPerson]', N'U') IS NOT NULL)
	DROP TABLE [xxPerson]

