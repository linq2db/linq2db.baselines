-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:00:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-05#

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
SET     @StartedOn = #2026-01-03#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-03 20:00:00#

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
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateDiff('h', [r].[StartedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], @asOf), [r].[StartedOn]), @asOf)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', [r].[StartedOn], @asOf), [r].[StartedOn]), @asOf), DateAdd('h', DateDiff('h', [r].[StartedOn], @asOf), [r].[StartedOn])), @asOf)) / 3600 > 24

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateDiff('h', @asOf, [r].[FinishedOn]) + (CDbl(DateDiff('d', DateAdd('h', DateDiff('h', @asOf, [r].[FinishedOn]), @asOf), [r].[FinishedOn])) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('h', DateDiff('h', @asOf, [r].[FinishedOn]), @asOf), [r].[FinishedOn]), DateAdd('h', DateDiff('h', @asOf, [r].[FinishedOn]), @asOf)), [r].[FinishedOn])) / 3600 > 24

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	DateDiff('n', [r].[StartedOn], @asOf) + (CDbl(DateDiff('d', DateAdd('n', DateDiff('n', [r].[StartedOn], @asOf), [r].[StartedOn]), @asOf)) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('n', DateDiff('n', [r].[StartedOn], @asOf), [r].[StartedOn]), @asOf), DateAdd('n', DateDiff('n', [r].[StartedOn], @asOf), [r].[StartedOn])), @asOf)) / 60

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT TOP 2
	DateDiff('d', [r].[StartedOn], CVar(@asOf)) + (CDbl(DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]), CVar(@asOf))) * 86400 + DateDiff('s', DateAdd('d', DateDiff('d', DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]), CVar(@asOf)), DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn])), CVar(@asOf))) / 86400,
	IIF(CVar(@asOf) >= DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn]), CVar(@asOf)), DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn])) > CVar(@asOf), DateDiff('h', DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn]), CVar(@asOf)) - 1, IIF(CVar(@asOf) < DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn]) AND DateAdd('h', DateDiff('h', DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn]), CVar(@asOf)), DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn])) < CVar(@asOf), DateDiff('h', DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn]), CVar(@asOf)) + 1, DateDiff('h', DateAdd('d', IIF(CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) - 1, IIF(CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf), DateDiff('d', [r].[StartedOn], CVar(@asOf)) + 1, DateDiff('d', [r].[StartedOn], CVar(@asOf)))), [r].[StartedOn]), CVar(@asOf)))) MOD 24
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

