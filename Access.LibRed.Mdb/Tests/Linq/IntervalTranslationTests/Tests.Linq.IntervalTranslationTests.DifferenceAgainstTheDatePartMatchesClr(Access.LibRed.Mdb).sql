-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-06-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-06-01 15:00:00#

INSERT INTO [EventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	DateDiff_Big('h', DateValue([r].[FinishedOn]), [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', DateValue([r].[FinishedOn]), [r].[FinishedOn]), DateValue([r].[FinishedOn])), [r].[FinishedOn]) / 3600000
FROM
	[EventRow] [r]

