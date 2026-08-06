-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = 41

SELECT
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Value AS NVarChar(11)) || ' Second')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

