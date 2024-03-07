BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 226

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p/1000.0) || ' Second')
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(226/1000.0) || ' Second')
FROM
	[LinqDataTypes] [t]

