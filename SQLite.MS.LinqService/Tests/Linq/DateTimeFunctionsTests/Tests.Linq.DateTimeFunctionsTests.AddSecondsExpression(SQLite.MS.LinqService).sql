BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = -35

SELECT
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@p AS NVarChar(11)) || ' Second')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

