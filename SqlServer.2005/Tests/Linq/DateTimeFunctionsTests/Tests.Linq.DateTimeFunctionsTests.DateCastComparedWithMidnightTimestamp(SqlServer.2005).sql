-- SqlServer.2005
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

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	DateAdd(dd, DateDiff(dd, 0, [r].[Value]), 0) = CAST('2026-06-01T00:00:00.000' AS DATETIME)

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	DateAdd(dd, DateDiff(dd, 0, [r].[Value]), 0) < CAST('2026-06-01T00:00:00.000' AS DATETIME)

-- SqlServer.2005
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	CAST('2026-06-01T00:00:00.000' AS DATETIME) = DateAdd(dd, DateDiff(dd, 0, [r].[Value]), 0)

