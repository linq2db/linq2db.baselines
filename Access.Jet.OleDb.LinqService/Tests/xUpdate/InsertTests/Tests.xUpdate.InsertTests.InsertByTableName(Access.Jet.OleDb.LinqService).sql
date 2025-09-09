BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [xxPerson]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

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
-- Access.Jet.OleDb AccessOleDb (asynchronously)
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
-- Access.Jet.OleDb AccessOleDb (asynchronously)
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
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
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
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	COUNT(*)
FROM
	[xxPerson] [p]
WHERE
	[p].[FirstName] = 'Steven' AND [p].[LastName] = 'King' AND
	[p].[Gender] = 'M'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [xxPerson]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [xxPerson]

