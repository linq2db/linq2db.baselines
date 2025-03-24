﻿BeforeExecute
--  SqlCe (asynchronously)

DROP TABLE [xxPerson]

BeforeExecute
--  SqlCe (asynchronously)

CREATE TABLE [xxPerson]
(
	[FirstName]  NVarChar(255)  NOT NULL,
	[PersonID]   Int            NOT NULL IDENTITY,
	[LastName]   NVarChar(255)  NOT NULL,
	[MiddleName] NVarChar(255)      NULL,
	[Gender]     NChar(1)       NOT NULL,

	CONSTRAINT [PK_xxPerson] PRIMARY KEY ([PersonID])
)

BeforeExecute
--  SqlCe (asynchronously)
DECLARE @FirstName NVarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName NVarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender NVarChar(1) -- String
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
--  SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[xxPerson] [t1]

BeforeExecute
--  SqlCe (asynchronously)

SELECT TOP (2)
	[t1].[FirstName],
	[t1].[PersonID] as [ID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
--  SqlCe (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 1

DELETE FROM
	[xxPerson]
WHERE
	[xxPerson].[PersonID] = @ID

BeforeExecute
--  SqlCe (asynchronously)

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[xxPerson] [t1]

BeforeExecute
--  SqlCe (asynchronously)

DROP TABLE [xxPerson]

