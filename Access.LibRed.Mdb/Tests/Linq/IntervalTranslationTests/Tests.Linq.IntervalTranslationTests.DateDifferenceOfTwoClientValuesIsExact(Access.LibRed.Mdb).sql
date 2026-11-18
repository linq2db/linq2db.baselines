-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-03 13:30:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-03 14:30:00#

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
SET     @Ticks = 1234
DECLARE @TotalMilliseconds  -- Double
SET     @TotalMilliseconds = 0.1234

SELECT TOP 2
	@Ticks + [r].[Id],
	@TotalMilliseconds + [r].[Id]
FROM
	[EventRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[EventRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @p  -- DateTime
SET     @p = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	[r].[FinishedOn] > @p

