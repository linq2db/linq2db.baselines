-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value  -- DateTime
SET     @Value = #2026-06-01 10:00:00#
DECLARE @Day  -- Date
SET     @Day = #2026-06-01#
DECLARE @Wide  -- DateTime2
SET     @Wide = #1969-01-01#

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
SELECT TOP 2
	DatePart('ms', [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	DatePart('ms', [r].[Wide])
FROM
	[CoarseDateShapesRow] [r]

