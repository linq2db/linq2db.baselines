﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = -35

SELECT
	Cast(StrFTime('%S', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p || ' Second')) as int)
FROM
	[LinqDataTypes] [t]

