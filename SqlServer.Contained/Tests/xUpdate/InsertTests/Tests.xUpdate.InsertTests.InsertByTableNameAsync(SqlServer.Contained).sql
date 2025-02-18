﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

CREATE TABLE [xxPerson]
(
	[FirstName]  NVarChar(Max)  NOT NULL,
	[PersonID]   Int            NOT NULL IDENTITY,
	[LastName]   NVarChar(Max)  NOT NULL,
	[MiddleName] NVarChar(Max)      NULL,
	[Gender]     Char(1)        NOT NULL,

	CONSTRAINT [PK_xxPerson] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [p]
WHERE
	[p].[FirstName] = N'Steven' AND [p].[LastName] = N'King' AND
	[p].[Gender] = 'M'

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

DROP TABLE [xxPerson]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [xxPerson]

