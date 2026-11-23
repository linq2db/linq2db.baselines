-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 10:00:00#

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
SELECT
	DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000
FROM
	[EventRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000
FROM
	[EventRow] [r]
WHERE
	[r].[Id] > 0
UNION ALL
SELECT
	DateDiff_Big('d', [r_1].[StartedOn], [r_1].[FinishedOn]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r_1].[StartedOn], [r_1].[FinishedOn]), [r_1].[StartedOn]), [r_1].[FinishedOn]) * 10000
FROM
	[EventRow] [r_1]
WHERE
	[r_1].[Id] <= 0

