-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:20:30#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 10:20:30#

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
	[r].[FinishedOn]
FROM
	[EventRow] [r]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	CASE
		WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('ms', DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
			THEN DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]) - 1
		WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('ms', DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
			THEN DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn]) + 1
		ELSE DateDiff_Big('ms', [r].[StartedOn], [r].[FinishedOn])
	END MOD 1000,
	CASE
		WHEN [r].[FinishedOn] >= DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]) AND DateAdd('s', DateDiff_Big('s', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn]), DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn])) > [r].[FinishedOn]
			THEN DateDiff_Big('s', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn]) - 1
		WHEN [r].[FinishedOn] < DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]) AND DateAdd('s', DateDiff_Big('s', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn]), DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn])) < [r].[FinishedOn]
			THEN DateDiff_Big('s', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn]) + 1
		ELSE DateDiff_Big('s', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn])
	END MOD 60
FROM
	[EventRow] [r]

