﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Cast(StrFTime('%j', [t].[DateTimeValue]) as int) % 7
FROM
	[LinqDataTypes] [t]

