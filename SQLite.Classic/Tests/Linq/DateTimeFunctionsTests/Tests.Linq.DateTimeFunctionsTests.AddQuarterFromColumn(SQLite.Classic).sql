﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],([t].[SmallIntValue]*3) || ' Month'))
FROM
	[LinqDataTypes] [t]

