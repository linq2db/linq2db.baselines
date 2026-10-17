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
	CAST([r].[Value] AS Date)
FROM
	[CoarseDateShapesRow] [r]
UNION ALL
SELECT
	[r_1].[Day]
FROM
	[CoarseDateShapesRow] [r_1]

-- SqlServer.2008
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN CAST([r].[Value] AS Date)
		ELSE CAST([r].[Value] AS Date)
	END
FROM
	[CoarseDateShapesRow] [r]

