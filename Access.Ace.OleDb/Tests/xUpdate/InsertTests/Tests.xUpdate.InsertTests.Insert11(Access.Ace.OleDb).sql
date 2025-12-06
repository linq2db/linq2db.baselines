-- Access.Ace.OleDb AccessOleDb

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Gender WChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName VarWChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarWChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName VarWChar(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 4

SELECT TOP 2
	[p2].[PersonID],
	[p2].[Gender],
	[p2].[FirstName],
	[p2].[MiddleName],
	[p2].[LastName]
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] > @id OR [p2].[PersonID] = 0

