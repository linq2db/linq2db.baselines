-- SqlServer.2025
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

-- SqlServer.2025
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	CAST([r].[Value] AS Date) = DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)

-- SqlServer.2025
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	CAST([r].[Value] AS Date) < DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7)

-- SqlServer.2025
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	DATETIME2FROMPARTS(2026, 6, 1, 0, 0, 0, 0, 7) = CAST([r].[Value] AS Date)

