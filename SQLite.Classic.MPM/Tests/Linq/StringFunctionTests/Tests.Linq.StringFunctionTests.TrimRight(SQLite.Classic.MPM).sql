﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[p].[PersonID],
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	RTRIM('  ' || [p].[FirstName] || ' ') = '  John' AND
	[p].[PersonID] = 1

