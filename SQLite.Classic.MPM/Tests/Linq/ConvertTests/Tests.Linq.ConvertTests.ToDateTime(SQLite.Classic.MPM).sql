﻿BeforeExecute
--  SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', CAST(strftime('%Y', [p].[DateTimeValue]) AS INTEGER) || '-01-01 00:00:00')
FROM
	[LinqDataTypes] [p]
WHERE
	CAST(strftime('%d', strftime('%Y-%m-%d %H:%M:%f', CAST(strftime('%Y', [p].[DateTimeValue]) AS INTEGER) || '-01-01 00:00:00')) AS INTEGER) > 0

