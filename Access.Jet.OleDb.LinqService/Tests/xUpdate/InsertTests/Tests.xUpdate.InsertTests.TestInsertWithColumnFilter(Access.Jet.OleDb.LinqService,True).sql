BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
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
-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
SET     @FirstName = 'InsertColumnFilter'

SELECT TOP 1
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @newName VarWChar(18) -- String
SET     @newName = 'InsertColumnFilter'

DELETE FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @newName

