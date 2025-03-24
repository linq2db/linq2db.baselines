﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t].[ID]
FROM
	[test_in_1] [t]
WHERE
	[t].[ID] IS NOT NULL AND NOT EXISTS(
		SELECT
			*
		FROM
			[test_in_2] [p]
		WHERE
			[t].[ID] = [p].[ID]
	)

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_1] [t1]

BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	[test_in_2] [t1]

