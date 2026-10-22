-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day Date
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide DateTime
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

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			CAST(MAX([g_1].[Day]) AS DateTime) < '2026-06-01 10:00:00.000'
	) [t1]

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			CAST(MIN([g_1].[Day]) AS DateTime) >= '2026-06-01 10:00:00.000'
	) [t1]

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Value]) < '2026-06-01 10:00:00.500'
	) [t1]

-- Sybase.Managed Sybase
SELECT
	COUNT(*)
FROM
	(
		SELECT
			[g_1].[Id]
		FROM
			[CoarseDateShapesRow] [g_1]
		GROUP BY
			[g_1].[Id]
		HAVING
			MAX([g_1].[Value]) = '2026-06-01 10:00:00.500'
	) [t1]

