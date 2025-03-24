﻿BeforeExecute
--  SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
--  SQLite.MS SQLite

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
--  SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
--  SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert14%' ESCAPE '~'

