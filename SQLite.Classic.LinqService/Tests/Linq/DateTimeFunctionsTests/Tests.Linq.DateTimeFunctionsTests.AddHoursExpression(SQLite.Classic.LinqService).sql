BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Hour  -- Int32
SET     @Hour = 22

SELECT
	CAST(strftime('%H', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Hour AS NVarChar(11)) || ' Hour')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

