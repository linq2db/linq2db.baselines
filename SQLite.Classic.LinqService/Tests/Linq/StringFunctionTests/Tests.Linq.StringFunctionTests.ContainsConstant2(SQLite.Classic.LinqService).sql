﻿BeforeExecute
--  SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] LIKE '%o~%h%' ESCAPE '~' AND [p].[PersonID] = 1

BeforeExecute
--  SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[FirstName] NOT LIKE '%o~%h%' ESCAPE '~' AND [p].[PersonID] = 1

