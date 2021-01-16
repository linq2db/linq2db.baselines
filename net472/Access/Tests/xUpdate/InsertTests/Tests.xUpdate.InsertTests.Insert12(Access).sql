BeforeExecute
-- Access AccessOleDb
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

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 4

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > @id

