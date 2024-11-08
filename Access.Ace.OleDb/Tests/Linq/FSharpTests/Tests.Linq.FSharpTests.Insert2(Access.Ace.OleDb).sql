BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
DECLARE @Gender VarWChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarWChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarWChar -- String
SET     @Name_MiddleName = ''
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

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[p].[PersonID],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 4

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Person] [t]
WHERE
	[t].[PersonID] > 4

