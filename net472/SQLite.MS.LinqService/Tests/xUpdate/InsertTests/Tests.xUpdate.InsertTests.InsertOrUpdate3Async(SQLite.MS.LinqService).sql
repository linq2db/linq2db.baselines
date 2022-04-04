BeforeExecute
-- SQLite.MS SQLite

UPDATE sqlite_sequence SET seq = 4 WHERE name = 'Person'

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] = 'John' AND [Person].[LastName] = 'Shepard'

BeforeExecute
-- SQLite.MS SQLite (asynchronously)

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
-- SQLite.MS SQLite (asynchronously)

SELECT last_insert_rowid()

