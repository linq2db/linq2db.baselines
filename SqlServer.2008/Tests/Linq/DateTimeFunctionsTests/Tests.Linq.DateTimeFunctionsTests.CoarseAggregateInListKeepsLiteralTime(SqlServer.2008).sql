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
	[t1].[In_1] IN (CAST('2026-06-01T10:00:00.5000000' AS DATETIME2))

-- SqlServer.2008
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
	[t1].[Max_1] IN (CAST('2026-06-01T10:00:00.5000000' AS DATETIME2))

-- SqlServer.2008
SELECT
	CASE
		WHEN CAST('2026-06-01T10:00:00.5000000' AS DATETIME2) IN (
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

