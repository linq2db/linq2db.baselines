-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

-- SQLite.MS SQLite

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

-- SQLite.MS SQLite

SELECT last_insert_rowid()

-- SQLite.MS SQLite

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' AND [p].[LastName] = 'Shepard'
LIMIT 2

-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

