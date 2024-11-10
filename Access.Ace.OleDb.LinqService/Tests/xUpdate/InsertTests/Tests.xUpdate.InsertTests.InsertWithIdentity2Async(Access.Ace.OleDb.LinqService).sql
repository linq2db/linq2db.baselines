BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'John',
	'Shepard',
	'M'
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

