-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value VarChar(23) -- AnsiString
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day VarChar(23) -- AnsiString
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide VarChar(23) -- AnsiString
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
	strftime('%Y-%m-%d %H:%M:%f', [t1].[Day_1]) < strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.000')

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
	strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1]) < strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.500')

-- SQLite.Classic.MPU SQLite.Classic SQLite
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
	strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1]) = strftime('%Y-%m-%d %H:%M:%f', '2026-06-01 10:00:00.500')

