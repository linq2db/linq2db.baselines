-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value DateTime
SET     @Value = '2026-06-01 10:00:00.000'
DECLARE @Day DateTime
SET     @Day = '2026-06-01 00:00:00.000'
DECLARE @Wide DateTime
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

-- SqlCe
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	Cast(Floor(Cast([r].[Value] as Float)) as DateTime) = '2026-06-01 00:00:00.000'

-- SqlCe
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	Cast(Floor(Cast([r].[Value] as Float)) as DateTime) < '2026-06-01 00:00:00.000'

-- SqlCe
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	'2026-06-01 00:00:00.000' = Cast(Floor(Cast([r].[Value] as Float)) as DateTime)

