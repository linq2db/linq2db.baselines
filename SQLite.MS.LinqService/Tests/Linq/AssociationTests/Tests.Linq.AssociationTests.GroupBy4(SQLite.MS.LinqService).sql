﻿BeforeExecute
-- SQLite.MS SQLite

SELECT
	[g_2].[Key_1]
FROM
	(
		SELECT
			CAST(strftime('%Y', [g_1].[DateTimeValue]) AS INTEGER) as [Key_1]
		FROM
			[LinqDataTypes] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Key_1]

