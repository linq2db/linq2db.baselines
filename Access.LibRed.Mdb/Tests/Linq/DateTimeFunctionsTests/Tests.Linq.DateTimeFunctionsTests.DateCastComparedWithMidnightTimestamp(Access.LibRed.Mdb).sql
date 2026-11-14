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
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	DateValue([r].[Value]) = #2026-06-01#

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	DateValue([r].[Value]) < #2026-06-01#

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[CoarseDateShapesRow] [r]
WHERE
	#2026-06-01# = DateValue([r].[Value])

