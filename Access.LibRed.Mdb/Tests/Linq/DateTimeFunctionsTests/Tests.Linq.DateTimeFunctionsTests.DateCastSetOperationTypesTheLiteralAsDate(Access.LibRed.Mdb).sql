-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- DateTime
SET     @Value = #2026-06-01 10:00:00#
DECLARE @Day  -- Date
SET     @Day = #2026-06-01#
DECLARE @Wide  -- DateTime2
SET     @Wide = #2026-06-01 10:00:00#

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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateValue([r].[Value])
FROM
	[CoarseDateShapesRow] [r]
UNION ALL
SELECT
	DateValue(#2026-06-01#)
FROM
	[CoarseDateShapesRow] [r_1]

