BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @part2  -- Int32
SET     @part2 = 3
DECLARE @part1  -- Int32
SET     @part1 = 2

SELECT
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@part2 - @part1 AS NVarChar(11)) || ' Hour')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

