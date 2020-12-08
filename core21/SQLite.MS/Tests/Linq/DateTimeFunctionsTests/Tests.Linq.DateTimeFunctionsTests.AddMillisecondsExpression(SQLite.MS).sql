BeforeExecute
-- SQLite.MS SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = 226

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],(@p_1/1000.0) || ' Second')
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

