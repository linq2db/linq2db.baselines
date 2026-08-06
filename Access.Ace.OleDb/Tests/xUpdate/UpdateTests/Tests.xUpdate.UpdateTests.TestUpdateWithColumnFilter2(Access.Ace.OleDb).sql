-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar -- String
SET     @MiddleName = NULL
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

-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(18) -- String
SET     @FirstName = 'UpdateColumnFilter'

SELECT TOP 2
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] = @FirstName

-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person] [t1]
SET
	[t1].[FirstName] = @FirstName
WHERE
	[t1].[PersonID] = @ID

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT TOP 2
	[x].[FirstName],
	[x].[PersonID],
	[x].[LastName],
	[x].[MiddleName],
	[x].[Gender]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = @ID

-- Access.Ace.OleDb AccessOleDb
DECLARE @FirstName VarWChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarWChar(25) -- String
SET     @LastName = 'UpdateColumnFilterUpdated'
DECLARE @MiddleName VarWChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Person] [t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName,
	[t1].[Gender] = @Gender
WHERE
	[t1].[PersonID] = @ID

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5

SELECT TOP 2
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @ID

