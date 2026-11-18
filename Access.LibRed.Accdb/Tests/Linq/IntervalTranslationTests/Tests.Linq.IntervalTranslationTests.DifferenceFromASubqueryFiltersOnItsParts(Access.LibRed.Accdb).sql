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
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	DateDiff_Big('h', [x].[StartedOn], [x].[FinishedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]), [x].[FinishedOn]) / 3600000 > 3

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[Id]
FROM
	[EventRow] [x]
WHERE
	CASE
		WHEN [x].[FinishedOn] >= DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn]), [x].[FinishedOn]), DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn])) > [x].[FinishedOn]
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn]), [x].[FinishedOn]) - 1
		WHEN [x].[FinishedOn] < DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn]), [x].[FinishedOn]), DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn])) < [x].[FinishedOn]
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn]), [x].[FinishedOn]) + 1
		ELSE DateDiff_Big('h', DateAdd('d', CASE
			WHEN [x].[FinishedOn] >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) > [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) - 1
			WHEN [x].[FinishedOn] < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]) < [x].[FinishedOn]
				THEN DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn])
		END, [x].[StartedOn]), [x].[FinishedOn])
	END MOD 24 = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[x].[Id]
FROM
	(
		SELECT
			(DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000 as [Taken],
			[r].[Id]
		FROM
			[EventRow] [r]
	) [x]
ORDER BY
	[x].[Taken] DESC

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	(DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [x].[StartedOn], [x].[FinishedOn]), [x].[StartedOn]), [x].[FinishedOn]) * 10000
FROM
	[EventRow] [x]
ORDER BY
	[x].[Id]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id],
	(DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) * 86400) * 10000000 + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) * 10000
FROM
	[EventRow] [r]
ORDER BY
	[r].[Id]

