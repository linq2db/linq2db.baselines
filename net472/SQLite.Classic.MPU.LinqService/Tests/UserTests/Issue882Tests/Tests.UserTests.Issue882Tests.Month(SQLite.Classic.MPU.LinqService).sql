﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%m', [t].[DateTimeValue]) as int) % 7
FROM
	[LinqDataTypes] [t]

