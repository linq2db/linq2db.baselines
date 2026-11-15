-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2026-01-03 13:30:00#
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
SELECT TOP 2
	CASE
		WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
			THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
		WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
			THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
		ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
	END,
	CASE
		WHEN [r].[FinishedOn] >= DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
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
			THEN DateDiff_Big('h', DateAdd('d', CASE
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
		END, [r].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
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
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn]) + 1
		ELSE DateDiff_Big('h', DateAdd('d', CASE
			WHEN [r].[FinishedOn] >= [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) > [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) - 1
			WHEN [r].[FinishedOn] < [r].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]) < [r].[FinishedOn]
				THEN DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + 1
			ELSE DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn])
		END, [r].[StartedOn]), [r].[FinishedOn])
	END MOD 24,
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
	END MOD 60,
	DateDiff_Big('h', [r].[StartedOn], [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 3600000
FROM
	[EventRow] [r]

