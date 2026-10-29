-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Text(23) -- DateTime
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day Text(23) -- Date
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide Text(23) -- DateTime
SET     @Wide = '2026-06-01 10:00:00.000'

INSERT INTO [CoarseDateShapesRow]
(
	[Id],
	[Value],
	[Day],
	[Wide]
)
VALUES
(
	@Id,
	@Value,
	@Day,
	@Wide
)

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX([g_1].[Value]) as [In_1]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[In_1] IN ('2026-06-01 10:00:00.500')

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	(
		SELECT
			MAX([g_1].[Value]) as [Max_1]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
	) [t1]
WHERE
	[t1].[Max_1] IN ('2026-06-01 10:00:00.500')

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN '2026-06-01 10:00:00.500' IN (
			SELECT
				MAX([g_1].[Value])
			FROM
				[CoarseDateShapesRow] [g_1]
			GROUP BY
				[g_1].[Id]
		)
			THEN 1
		ELSE 0
	END

