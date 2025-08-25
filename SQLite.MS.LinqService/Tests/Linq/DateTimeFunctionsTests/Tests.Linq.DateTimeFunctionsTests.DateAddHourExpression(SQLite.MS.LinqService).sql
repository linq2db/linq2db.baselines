BeforeExecute
-- SQLite.MS SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 1

SELECT
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Value AS NVarChar(11)) || ' Hour')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

