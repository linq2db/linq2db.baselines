BeforeExecute
-- SQLite.Classic SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] = 'John' AND [Person].[LastName] = 'Shepard'

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic SQLite (asynchronously)

SELECT last_insert_rowid()

