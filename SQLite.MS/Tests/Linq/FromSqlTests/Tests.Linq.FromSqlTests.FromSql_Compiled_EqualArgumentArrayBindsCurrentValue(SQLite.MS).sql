-- SQLite.MS SQLite
DECLARE @p Text -- DateTimeOffset
SET     @p = '2020-01-01 12:00:00.000+02:00'

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE @p IS NOT NULL
	) [p]

-- SQLite.MS SQLite
DECLARE @p Text -- DateTimeOffset
SET     @p = '2020-01-01 10:00:00.000+00:00'

SELECT
	[p].[PersonID]
FROM
	(
		SELECT * FROM Person WHERE @p IS NOT NULL
	) [p]

