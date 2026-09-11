-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Minute  -- Int32
SET     @Minute = -8

SELECT
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Minute AS NVarChar(11)) || ' Minute')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

