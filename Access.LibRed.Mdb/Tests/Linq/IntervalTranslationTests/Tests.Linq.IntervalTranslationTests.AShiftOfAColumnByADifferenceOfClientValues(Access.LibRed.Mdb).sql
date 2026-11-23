-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 12:00:00#

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
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[StartedOn])))
FROM
	[EventRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT TOP 2
	DateAdd('ms', Fix((@Ticks * -1 MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks * -1 MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks * -1 / 864000000000), [r].[FinishedOn])))
FROM
	[EventRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd('ms', Fix((@Ticks MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks / 864000000000), [r].[StartedOn]))) < [r].[FinishedOn]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Ticks  -- Int64
SET     @Ticks = 36002500000

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateAdd('ms', Fix((@Ticks * -1 MOD 10000000) / 10000), DateAdd('s', Fix((@Ticks * -1 MOD 864000000000) / 10000000), DateAdd('d', Fix(@Ticks * -1 / 864000000000), [r].[FinishedOn]))) > DateAdd('h', 1, [r].[StartedOn])

