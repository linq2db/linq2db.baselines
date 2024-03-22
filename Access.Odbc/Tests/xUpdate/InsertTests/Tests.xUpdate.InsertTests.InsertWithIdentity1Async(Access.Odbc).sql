BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

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
-- Access.Odbc AccessODBC (asynchronously)

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' AND [p].[LastName] = 'Shepard'

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

