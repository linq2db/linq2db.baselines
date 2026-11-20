-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 15:00:00#

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 11:00:00#

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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[t1].[Taken]
FROM
	(
		SELECT
			DateDiff_Big('h', [r].[StartedOn], [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 3600000 as [TotalHours],
			[r].[Id],
			DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400 * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000 as [Taken]
		FROM
			[EventRow] [r]
	) [t1]
WHERE
	[t1].[TotalHours] > 3
ORDER BY
	[t1].[Id]

