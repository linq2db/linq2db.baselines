﻿BeforeExecute
--  SQLite.MS SQLite

SELECT
	CAST(strftime('%w', [t].[DateTimeValue]) AS INTEGER) + 1
FROM
	[LinqDataTypes] [t]

