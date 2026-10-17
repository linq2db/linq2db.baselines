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
	Cast(Floor(Cast([r].[Value] as Float)) as DateTime)
FROM
	[CoarseDateShapesRow] [r]
UNION ALL
SELECT
	[r_1].[Day]
FROM
	[CoarseDateShapesRow] [r_1]

-- SqlCe
SELECT
	CASE
		WHEN [r].[Id] > 0 THEN CAST(CONVERT(NVarChar(10), [r].[Value], 101) AS DateTime)
		ELSE Cast(Floor(Cast([r].[Value] as Float)) as DateTime)
	END
FROM
	[CoarseDateShapesRow] [r]

