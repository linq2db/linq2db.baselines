BeforeExecute
-- Access AccessOleDb

SELECT
	Max([p].[PersonID])
FROM
	[Person] [p]

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT TOP 2
	[p].[PersonID],
	[p].[Gender],
	[p].[FirstName],
	[p].[MiddleName],
	[p].[LastName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] > 4

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

