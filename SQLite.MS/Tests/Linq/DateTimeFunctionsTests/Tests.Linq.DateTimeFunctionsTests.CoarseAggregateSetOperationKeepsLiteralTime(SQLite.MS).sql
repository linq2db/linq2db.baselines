-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- DateTime
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day  -- Date
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide  -- DateTime
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
	MAX([g_1].[Day])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.000')
FROM
	[CoarseDateShapesRow] [r]

-- SQLite.MS SQLite
SELECT
	MAX([g_1].[Value])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.500')
FROM
	[CoarseDateShapesRow] [r]

