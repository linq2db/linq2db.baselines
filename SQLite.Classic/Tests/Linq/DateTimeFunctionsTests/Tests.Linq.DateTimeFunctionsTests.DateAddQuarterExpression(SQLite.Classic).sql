BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Value  -- Int32
SET     @Value = -1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Value * 3 AS NVarChar(11)) || ' Month'))
FROM
	[LinqDataTypes] [t]

