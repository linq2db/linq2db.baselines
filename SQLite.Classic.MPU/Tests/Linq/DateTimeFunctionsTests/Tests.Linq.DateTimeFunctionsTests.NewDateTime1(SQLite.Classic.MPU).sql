﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER)) || '-10-01 00:00:00.000')
FROM
	[LinqDataTypes] [t]
WHERE
	CAST(strftime('%m', strftime('%Y-%m-%d %H:%M:%f', printf('%04d', CAST(strftime('%Y', [t].[DateTimeValue]) AS INTEGER)) || '-10-01 00:00:00.000')) AS INTEGER) = 10

