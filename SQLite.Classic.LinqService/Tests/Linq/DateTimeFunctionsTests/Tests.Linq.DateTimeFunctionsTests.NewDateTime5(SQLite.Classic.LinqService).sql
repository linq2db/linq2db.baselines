﻿BeforeExecute
-- SQLite.Classic SQLite

SELECT
	CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) + 1
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(strftime('%m', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER) + 1) || '-10-01 00:00:00.000')) AS INTEGER) = 10

