BeforeExecute
-- SQLite.Classic SQLite
DECLARE @part1  -- Int32
SET     @part1 = 11
DECLARE @part2  -- Int32
SET     @part2 = 11

SELECT
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@part1 + @part2 AS NVarChar(11)) || ' Hour')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

