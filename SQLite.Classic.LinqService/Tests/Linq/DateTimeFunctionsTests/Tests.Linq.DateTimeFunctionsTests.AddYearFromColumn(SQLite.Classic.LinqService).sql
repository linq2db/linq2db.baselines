﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST([t].[SmallIntValue] AS NVarChar(6)) || ' Year'))
FROM
	[LinqDataTypes] [t]

