﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	([p].[FirstName] || ' 12') = 'John 12'

