BeforeExecute
-- SQLite.MS SQLite
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	COUNT(*)
FROM
	[sample_table_temp] [t]
WHERE
	[t].[id] BETWEEN @p AND [value]

