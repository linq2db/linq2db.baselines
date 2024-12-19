BeforeExecute
-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

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
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

