-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	@@IDENTITY

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

