﻿BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [xxPerson]

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

SELECT
	Count(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'Steven'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'King'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'None'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'
DECLARE @ID Int -- Int32
SET     @ID = 1

UPDATE
	[t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName,
	[t1].[Gender] = @Gender
FROM
	[xxPerson] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- SqlServer.SA SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE [xxPerson]

