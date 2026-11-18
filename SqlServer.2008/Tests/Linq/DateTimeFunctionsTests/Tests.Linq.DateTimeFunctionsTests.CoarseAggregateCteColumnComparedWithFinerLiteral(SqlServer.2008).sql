-- SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)
DECLARE @Day Date
SET     @Day = CAST('2026-06-01T00:00:00.0000000' AS DATETIME2)
DECLARE @Wide DateTime2
SET     @Wide = CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)

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

-- SqlServer.2008
WITH [CTE_1] ([Day_1])
AS
(
	SELECT
		MAX([g_1].[Day])
	FROM
		[CoarseDateShapesRow] [g_1]
	GROUP BY
		[g_1].[Id]
)
SELECT
	COUNT(*)
FROM
	[CTE_1] [t1]
WHERE
	[t1].[Day_1] < CAST('2026-06-01T10:00:00.0000000' AS DATETIME2)

-- SqlServer.2008
WITH [CTE_1] ([Day_1], [Value_1])
AS
(
	SELECT
		MAX([g_1].[Day]),
		MAX([g_1].[Value])
	FROM
		[CoarseDateShapesRow] [g_1]
	GROUP BY
		[g_1].[Id]
)
SELECT
	COUNT(*)
FROM
	[CTE_1] [t1]
WHERE
	[t1].[Value_1] < CAST('2026-06-01T10:00:00.5000000' AS DATETIME2)

-- SqlServer.2008
WITH [CTE_1] ([Day_1], [Value_1])
AS
(
	SELECT
		MAX([g_1].[Day]),
		MAX([g_1].[Value])
	FROM
		[CoarseDateShapesRow] [g_1]
	GROUP BY
		[g_1].[Id]
)
SELECT
	COUNT(*)
FROM
	[CTE_1] [t1]
WHERE
	[t1].[Value_1] = CAST('2026-06-01T10:00:00.5000000' AS DATETIME2)

