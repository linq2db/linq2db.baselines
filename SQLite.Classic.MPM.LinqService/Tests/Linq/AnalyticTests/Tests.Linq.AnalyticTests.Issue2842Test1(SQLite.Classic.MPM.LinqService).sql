﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[x].[FirstName],
	RANK() OVER(ORDER BY ([x].[PersonID] = 2))
FROM
	[Person] [x]

