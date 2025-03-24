﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[MiddleName],
	COUNT(*)
FROM
	[Person] [t1]
GROUP BY
	[t1].[MiddleName]
HAVING
	[t1].[MiddleName] IS NULL OR [t1].[MiddleName] <> 'Unknown' OR
	[t1].[MiddleName] IS NULL

