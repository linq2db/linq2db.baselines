-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb

SELECT @@IDENTITY

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb

SELECT @@IDENTITY

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[xxPerson] [p]
WHERE
	[p].[FirstName] = 'Steven' AND [p].[LastName] = 'King' AND
	[p].[Gender] = 'M'

