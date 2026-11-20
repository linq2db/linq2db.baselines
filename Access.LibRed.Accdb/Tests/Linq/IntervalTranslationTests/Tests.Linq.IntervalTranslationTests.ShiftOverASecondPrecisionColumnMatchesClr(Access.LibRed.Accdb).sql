-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	DateAdd('ms', Fix(((DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000) MOD 10000000) / 10000), DateAdd('s', Fix(((DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000) MOD 864000000000) / 10000000), DateAdd('d', Fix((DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000) / 864000000000), #2026-06-20#)))
FROM
	[CoarseEventRow] [r]

