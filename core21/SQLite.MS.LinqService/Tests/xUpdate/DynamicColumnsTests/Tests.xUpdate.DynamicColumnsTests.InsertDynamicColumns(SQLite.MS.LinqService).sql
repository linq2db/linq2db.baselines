﻿BeforeExecute
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
	'The Dynamic',
	'M'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'John' AND [c_1].[LastName] = 'The Dynamic'

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[LastName] = 'The Dynamic'

