BeforeExecute
-- SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = 5

SELECT
	CAST(strftime('%M', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@p AS NVarChar(11)) || ' Minute')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

