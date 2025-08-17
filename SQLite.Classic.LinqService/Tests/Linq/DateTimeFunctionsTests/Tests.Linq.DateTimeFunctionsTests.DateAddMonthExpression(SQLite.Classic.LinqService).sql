BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @Value  -- Int32
SET     @Value = 2

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Value AS NVarChar(11)) || ' Month'))
FROM
	[LinqDataTypes] [t]

