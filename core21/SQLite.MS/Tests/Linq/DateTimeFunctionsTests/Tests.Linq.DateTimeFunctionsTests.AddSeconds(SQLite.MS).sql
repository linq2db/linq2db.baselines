﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],-35 || ' Second')
FROM
	[LinqDataTypes] [t]

