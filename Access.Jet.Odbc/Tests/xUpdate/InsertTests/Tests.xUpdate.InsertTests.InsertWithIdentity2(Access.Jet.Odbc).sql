-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

SELECT @@IDENTITY

-- Access.Jet.Odbc AccessODBC

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

-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

