-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Text -- DateTimeOffset
SET     @p = '2020-01-01 12:00:00.000+02:00'

SELECT
	[t1].[value]
FROM
	(
		SELECT 1 AS value WHERE @p IS NOT NULL
	) [t1]

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @p Text -- DateTimeOffset
SET     @p = '2020-01-01 10:00:00.000+00:00'

SELECT
	[t1].[value]
FROM
	(
		SELECT 1 AS value WHERE @p IS NOT NULL
	) [t1]

