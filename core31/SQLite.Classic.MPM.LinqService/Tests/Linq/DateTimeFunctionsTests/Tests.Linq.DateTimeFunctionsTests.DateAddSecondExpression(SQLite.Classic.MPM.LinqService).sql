BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p_1  -- Int32
SET     @p_1 = 41

SELECT
	strftime('%Y-%m-%d %H:%M:%f', [t].[DateTimeValue],@p_1 || ' Second')
FROM
	[LinqDataTypes] [t]

