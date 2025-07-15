BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	'first name',
	'last name',
	'middle name',
	'F'
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

[Person_Delete]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

BeforeExecute
DisposeTransaction
