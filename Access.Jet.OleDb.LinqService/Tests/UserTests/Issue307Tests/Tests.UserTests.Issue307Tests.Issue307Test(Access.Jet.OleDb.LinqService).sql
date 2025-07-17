BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Gender WChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @FirstName VarWChar(12) -- String
SET     @FirstName = 'FirstName307'
DECLARE @MiddleName VarWChar -- String
SET     @MiddleName = NULL
DECLARE @LastName VarWChar(11) -- String
SET     @LastName = 'LastName307'

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
	@FirstName,
	@MiddleName,
	@LastName
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 5

SELECT TOP 1
	[t1].[PersonID],
	[t1].[Gender],
	[t1].[FirstName],
	[t1].[MiddleName],
	[t1].[LastName]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

