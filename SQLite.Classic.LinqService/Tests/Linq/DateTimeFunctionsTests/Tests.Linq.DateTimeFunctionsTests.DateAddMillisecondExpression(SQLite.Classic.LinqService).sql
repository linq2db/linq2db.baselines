BeforeExecute
-- SQLite.Classic SQLite
DECLARE @part1  -- Int32
SET     @part1 = 200
DECLARE @part2  -- Int32
SET     @part2 = 26

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(CAST(@part1 + @part2 AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

