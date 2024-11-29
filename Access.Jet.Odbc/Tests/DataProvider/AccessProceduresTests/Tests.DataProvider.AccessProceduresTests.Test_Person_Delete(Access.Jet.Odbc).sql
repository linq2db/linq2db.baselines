BeforeExecute
BeginTransaction
BeforeExecute
-- Access.Jet.Odbc AccessODBC

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
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

{ CALL Person_Delete(?) }

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = ?

BeforeExecute
DisposeTransaction
