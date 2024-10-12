BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @part1  -- Int32
SET     @part1 = 20
DECLARE @part2  -- Int32
SET     @part2 = 21

SELECT
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@part1 + @part2 AS NVarChar(11)) || ' Second')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

