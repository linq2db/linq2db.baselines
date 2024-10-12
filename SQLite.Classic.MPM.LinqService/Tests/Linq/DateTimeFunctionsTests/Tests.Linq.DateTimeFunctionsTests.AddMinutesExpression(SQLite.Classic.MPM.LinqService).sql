BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @part1  -- Int32
SET     @part1 = 1
DECLARE @part2  -- Int32
SET     @part2 = 9

SELECT
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@part1 - @part2 AS NVarChar(11)) || ' Minute')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

