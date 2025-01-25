BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 22

SELECT
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@p AS NVarChar(11)) || ' Hour')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

