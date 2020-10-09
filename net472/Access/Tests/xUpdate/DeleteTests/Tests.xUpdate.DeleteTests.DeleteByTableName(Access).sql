﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [xxPerson]
(
	[FirstName]  NVarChar(255)  NOT NULL,
	[PersonID]   Int            NOT NULL IDENTITY,
	[LastName]   NVarChar(255)  NOT NULL,
	[MiddleName] NVarChar(255)      NULL,
	[Gender]     Char(1)        NOT NULL,

	CONSTRAINT [PK_xxPerson] PRIMARY KEY CLUSTERED ([PersonID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarWChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarWChar -- String
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
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- Access AccessOleDb

SELECT TOP 2 
	[t1].[FirstName], 
	[t1].[PersonID], 
	[t1].[LastName], 
	[t1].[MiddleName], 
	[t1].[Gender]
FROM
	[xxPerson] [t1]

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

DELETE FROM
	[xxPerson] [t1]
WHERE
	[t1].[PersonID] = @ID

BeforeExecute
-- Access AccessOleDb

SELECT 
	Count(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [xxPerson]

