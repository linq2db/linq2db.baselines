BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

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
-- Access.Odbc AccessODBC (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

