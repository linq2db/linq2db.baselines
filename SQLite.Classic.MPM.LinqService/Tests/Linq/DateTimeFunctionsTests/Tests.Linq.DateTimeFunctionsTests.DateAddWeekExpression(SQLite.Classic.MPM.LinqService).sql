BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	Date(strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue], CAST(@p * 7 AS NVarChar(11)) || ' Day'))
FROM
	[LinqDataTypes] [t]

