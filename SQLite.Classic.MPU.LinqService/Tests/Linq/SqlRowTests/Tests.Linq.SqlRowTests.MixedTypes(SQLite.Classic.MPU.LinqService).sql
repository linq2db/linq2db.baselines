﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[Mixed] [t]
WHERE
	[t].[Int] > 0 AND ([t].[Str], [t].[Double], [t].[Bool]) = ('One', 1, 1) AND
	EXISTS(
		SELECT
			*
		FROM
			[Mixed] [u]
		WHERE
			(2, [u].[Date]) > ([u].[Int], [t].[Date])
	)

