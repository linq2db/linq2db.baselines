-- SqlServer.2022.MS SqlServer.2022
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

-- SqlServer.2022.MS SqlServer.2022
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
	[t1].[Day_1] < DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 0, 7)

-- SqlServer.2022.MS SqlServer.2022
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
	[t1].[Value_1] < DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7)

-- SqlServer.2022.MS SqlServer.2022
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
	[t1].[Value_1] = DATETIME2FROMPARTS(2026, 6, 1, 10, 0, 0, 5000000, 7)

