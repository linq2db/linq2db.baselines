-- SQLite.MS SQLite
DECLARE @z  -- Int32
SET     @z = 0

SELECT
	COUNT(*)
FROM
	[sample_table_temp] [t]
WHERE
	[t].[id] BETWEEN @z AND [value]

