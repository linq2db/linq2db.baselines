﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @part1  -- Int16
SET     @part1 = 4
DECLARE @part2  -- Int32
SET     @part2 = 4

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(([t].[SmallIntValue] + @part1) - @part2 AS NVarChar(11)) || ' Year'))
FROM
	[LinqDataTypes] [t]

