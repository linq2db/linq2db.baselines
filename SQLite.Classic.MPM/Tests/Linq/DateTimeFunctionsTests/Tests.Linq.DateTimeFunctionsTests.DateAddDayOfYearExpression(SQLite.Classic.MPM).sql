-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 3

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Value AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

