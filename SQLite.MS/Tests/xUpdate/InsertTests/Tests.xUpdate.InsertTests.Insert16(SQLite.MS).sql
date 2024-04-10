BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

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
	'Insert16',
	CAST(12 AS NVarChar(11)),
	'M'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%' ESCAPE '~'

