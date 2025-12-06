-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[xxPerson] [t1]

-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

DELETE FROM
	[xxPerson] [t1]
WHERE
	[t1].[PersonID] = @ID

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[xxPerson] [t1]

