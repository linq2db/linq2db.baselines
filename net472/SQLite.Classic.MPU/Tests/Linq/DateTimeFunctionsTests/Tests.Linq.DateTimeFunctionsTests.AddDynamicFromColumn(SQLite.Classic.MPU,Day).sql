﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],[t].[SmallIntValue] || ' Day')
FROM
	[LinqDataTypes] [t]

