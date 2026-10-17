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
	MAX([g_1].[Day])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CAST(DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7) AS DateTime2)
FROM
	[CoarseDateShapesRow] [r]

-- SqlServer.2022
SELECT
	MAX([g_1].[Value])
FROM
	[CoarseDateShapesRow] [g_1]
GROUP BY
	[g_1].[Id]
UNION ALL
SELECT
	CAST(DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7) AS DateTime2)
FROM
	[CoarseDateShapesRow] [r]

