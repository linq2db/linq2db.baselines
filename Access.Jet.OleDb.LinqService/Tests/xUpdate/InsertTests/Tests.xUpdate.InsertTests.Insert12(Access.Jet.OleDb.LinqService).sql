BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @FirstName VarWChar(9) -- String
SET     @FirstName = 'FirstName'
DECLARE @Gender WChar(1) -- StringFixedLength
SET     @Gender = 'F'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	@FirstName,
	'LastName',
	@Gender
)

