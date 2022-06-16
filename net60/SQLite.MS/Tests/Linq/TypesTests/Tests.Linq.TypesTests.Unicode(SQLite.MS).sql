BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

BeforeExecute
BeginTransaction
BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'擊敗奴隸',
	'Юникодкин',
	'M'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT last_insert_rowid()

BeforeExecute
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
	[p].[FirstName] = '擊敗奴隸' AND [p].[LastName] = 'Юникодкин'
LIMIT 2

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[PersonID] > 4

