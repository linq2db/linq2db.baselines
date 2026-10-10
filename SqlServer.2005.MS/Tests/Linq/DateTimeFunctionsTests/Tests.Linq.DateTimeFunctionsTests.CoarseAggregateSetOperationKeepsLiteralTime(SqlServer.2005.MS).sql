-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = CAST('2026-06-01T10:00:00.000' AS DATETIME)
DECLARE @Day DateTime
SET     @Day = CAST('2026-06-01T00:00:00.000' AS DATETIME)
DECLARE @Wide DateTime
SET     @Wide = CAST('2026-06-01T10:00:00.000' AS DATETIME)

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

-- SqlServer.2005.MS SqlServer.2005
SELECT
	MAX([g_1].[Day])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CAST(CAST('2026-06-01T10:00:00.000' AS DATETIME) AS DateTime)
FROM
	[CoarseDateShapesRow] [r]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	MAX([g_1].[Value])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CAST(CAST('2026-06-01T10:00:00.500' AS DATETIME) AS DateTime)
FROM
	[CoarseDateShapesRow] [r]

