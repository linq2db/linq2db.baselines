-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-06-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-06-01 15:04:03#
DECLARE @OpenedOn  -- Date
SET     @OpenedOn = #2026-06-01#
DECLARE @ClosedOn  -- Date
SET     @ClosedOn = #2026-06-01#

INSERT INTO [CoarseEventRow]
(
	[Id],
	[StartedOn],
	[FinishedOn],
	[OpenedOn],
	[ClosedOn]
)
VALUES
(
	@Id,
	@StartedOn,
	@FinishedOn,
	@OpenedOn,
	@ClosedOn
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	(DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000
FROM
	[CoarseEventRow] [r]

