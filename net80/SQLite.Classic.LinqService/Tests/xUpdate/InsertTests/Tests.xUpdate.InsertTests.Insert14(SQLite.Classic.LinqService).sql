﻿BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

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
		LIMIT 1
	),
	'Shepard',
	'M'
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE 'Insert14%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert14%' ESCAPE '~'

