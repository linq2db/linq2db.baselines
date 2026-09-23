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
SELECT TOP (2)
	DateAdd(millisecond, 226, [r].[Value])
FROM
	[CoarseDateShapesRow] [r]

-- SqlCe
SELECT TOP (2)
	DateAdd(millisecond, 226, [r].[Value])
FROM
	[CoarseDateShapesRow] [r]

