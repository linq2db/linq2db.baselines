-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-01 10:59:00#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #2026-01-01 11:01:00#

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
SELECT TOP 2
	DateDiff_Big('n', [r].[StartedOn], [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('n', DateDiff_Big('n', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 60000,
	CASE
		WHEN [r].[FinishedOn] >= DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]) AND DateAdd('n', DateDiff_Big('n', DateAdd('d', CASE
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
			THEN DateDiff_Big('n', DateAdd('d', CASE
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
		END, [r].[StartedOn]) AND DateAdd('n', DateDiff_Big('n', DateAdd('d', CASE
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
			THEN DateDiff_Big('n', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn]) + 1
		ELSE DateDiff_Big('n', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn])
	END MOD 60
FROM
	[EventRow] [r]

