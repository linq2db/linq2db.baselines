﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Date  -- Int32
SET     @Date = 1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Date AS NVarChar(11)) || ' Year'))
FROM
	[LinqDataTypes] [t]

