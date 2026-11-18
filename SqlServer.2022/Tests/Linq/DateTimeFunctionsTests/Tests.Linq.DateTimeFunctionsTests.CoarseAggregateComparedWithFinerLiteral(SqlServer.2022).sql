-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
DECLARE @Day Date
SET     @Day = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)
DECLARE @Wide DateTime2
SET     @Wide = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)

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

-- SqlServer.2022
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
			MAX([g_1].[Day]) < DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
	) [t1]

-- SqlServer.2022
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
			MIN([g_1].[Day]) >= DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)
	) [t1]

-- SqlServer.2022
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
			MAX([g_1].[Value]) < DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7)
	) [t1]

-- SqlServer.2022
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
			MAX([g_1].[Value]) = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7)
	) [t1]

