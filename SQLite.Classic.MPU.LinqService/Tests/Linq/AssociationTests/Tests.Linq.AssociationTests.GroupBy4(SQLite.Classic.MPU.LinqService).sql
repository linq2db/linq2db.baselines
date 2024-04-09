﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[g_2].[Year_1]
FROM
	(
		SELECT
			CAST(strftime('%Y', [g_1].[DateTimeValue]) AS INTEGER) as [Year_1]
		FROM
			[LinqDataTypes] [g_1]
	) [g_2]
GROUP BY
	[g_2].[Year_1]

