BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Second  -- Int32
SET     @Second = -35

SELECT
	CAST(strftime('%S', strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@Second AS NVarChar(11)) || ' Second')) AS INTEGER)
FROM
	[LinqDataTypes] [t]

