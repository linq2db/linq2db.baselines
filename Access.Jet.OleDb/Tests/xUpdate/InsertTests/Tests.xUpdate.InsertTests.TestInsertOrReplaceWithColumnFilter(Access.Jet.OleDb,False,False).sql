-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @ID Integer -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName
WHERE
	[t1].[ID] = @ID

-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar(15) -- String
SET     @MiddleName = 'som middle name'

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName]
)
VALUES
(
	@ID,
	@FirstName,
	@LastName,
	@MiddleName
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName

-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID Integer -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName
WHERE
	[t1].[ID] = @ID

-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName

