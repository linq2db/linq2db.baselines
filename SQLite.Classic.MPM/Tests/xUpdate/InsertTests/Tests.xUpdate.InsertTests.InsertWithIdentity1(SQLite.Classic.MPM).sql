-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT last_insert_rowid()

-- SQLite.Classic.MPM SQLite.Classic SQLite

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

-- SQLite.Classic.MPM SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

