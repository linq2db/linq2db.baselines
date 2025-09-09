BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert14' || (
		SELECT
			[p].[FirstName]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = 1
	),
	'Shepard',
	'M'
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert14%' ESCAPE '~'

