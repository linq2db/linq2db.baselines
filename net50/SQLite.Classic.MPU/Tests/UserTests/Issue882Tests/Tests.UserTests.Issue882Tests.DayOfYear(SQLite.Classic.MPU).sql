﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%j', [t].[DateTimeValue]) as int) % 7
FROM
	[LinqDataTypes] [t]

