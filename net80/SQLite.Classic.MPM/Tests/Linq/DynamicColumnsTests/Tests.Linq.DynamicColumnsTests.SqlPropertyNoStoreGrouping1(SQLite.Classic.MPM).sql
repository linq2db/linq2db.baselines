﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[g_1].[FirstName],
	Count(*)
FROM
	[Person] [g_1]
GROUP BY
	[g_1].[FirstName]
ORDER BY
	[g_1].[FirstName]

