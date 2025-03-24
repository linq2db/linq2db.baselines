BeforeExecute
--  SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
--  SQLite.MS SQLite (asynchronously)

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
--  SQLite.MS SQLite (asynchronously)

SELECT last_insert_rowid()

BeforeExecute
--  SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

