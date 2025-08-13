BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 5

SELECT
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Value AS NVarChar(11)) || ' Minute')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

