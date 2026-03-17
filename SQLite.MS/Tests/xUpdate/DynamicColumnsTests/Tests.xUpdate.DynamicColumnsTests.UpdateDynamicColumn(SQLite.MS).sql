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
	'Limonadovy',
	'M'
)

-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

-- SQLite.MS SQLite

UPDATE
	[Person]
SET
	[FirstName] = 'Johnny'
WHERE
	[Person].[LastName] = 'Limonadovy'

-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

