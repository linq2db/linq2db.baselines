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
	CAST(CONVERT(NVarChar(10), [r].[Value], 101) AS DateTime)
FROM
	[CoarseDateShapesRow] [r]
UNION ALL
SELECT
	CAST('2026-06-01 00:00:00.000' AS DateTime)
FROM
	[CoarseDateShapesRow] [r_1]

