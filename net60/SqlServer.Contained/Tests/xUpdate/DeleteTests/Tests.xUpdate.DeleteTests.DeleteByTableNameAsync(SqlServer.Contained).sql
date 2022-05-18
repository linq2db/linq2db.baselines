﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

DROP TABLE IF EXISTS [xxPerson]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

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

SELECT
	Count(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT TOP (2)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

DELETE [t1]
FROM
	[xxPerson] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	Count(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

DROP TABLE [xxPerson]

