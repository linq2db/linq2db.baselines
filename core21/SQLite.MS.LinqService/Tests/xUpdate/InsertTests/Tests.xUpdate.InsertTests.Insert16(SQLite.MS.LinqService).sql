﻿BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- SQLite.MS SQLite
DECLARE @name NVarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx  -- Int32
SET     @idx = 4

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	'Insert16',
	Cast((Length(@name) + @idx) as NVarChar(11)),
	'M'
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Insert16%'

BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[Person]
WHERE
	[Person].[FirstName] LIKE 'Insert16%'

