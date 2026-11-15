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
	DateDiff_Big('h', [r].[StartedOn], @asOf) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[StartedOn], @asOf), [r].[StartedOn]), @asOf) / 3600000 > 24

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
WHERE
	DateDiff_Big('h', @asOf, [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', @asOf, [r].[FinishedOn]), @asOf), [r].[FinishedOn]) / 3600000 > 24

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[EventRow] [r]
ORDER BY
	DateDiff_Big('n', [r].[StartedOn], @asOf) + DateDiff_Big('ms', DateAdd('n', DateDiff_Big('n', [r].[StartedOn], @asOf), [r].[StartedOn]), @asOf) / 60000

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT TOP 2
	DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]), CVar(@asOf)) / 86400000,
	CASE
		WHEN CVar(@asOf) >= DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn]), CVar(@asOf)), DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn])) > CVar(@asOf)
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn]), CVar(@asOf)) - 1
		WHEN CVar(@asOf) < DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn]), CVar(@asOf)), DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn])) < CVar(@asOf)
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn]), CVar(@asOf)) + 1
		ELSE DateDiff_Big('h', DateAdd('d', CASE
			WHEN CVar(@asOf) >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) > CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) - 1
			WHEN CVar(@asOf) < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)), [r].[StartedOn]) < CVar(@asOf)
				THEN DateDiff_Big('d', [r].[StartedOn], CVar(@asOf)) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], CVar(@asOf))
		END, [r].[StartedOn]), CVar(@asOf))
	END MOD 24
FROM
	[EventRow] [r]
WHERE
	[r].[Id] = 1

