BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 226

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(CAST(@p AS Float) / 1000 AS NVarChar(22)) || ' Second')
FROM
	[LinqDataTypes] [t]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[DateTimeValue]
FROM
	[LinqDataTypes] [t]

