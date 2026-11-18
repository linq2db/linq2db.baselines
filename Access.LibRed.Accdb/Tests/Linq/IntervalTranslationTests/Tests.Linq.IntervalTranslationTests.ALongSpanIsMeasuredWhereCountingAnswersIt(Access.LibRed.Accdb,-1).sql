-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StartedOn  -- DateTime
SET     @StartedOn = #2045-06-05 04:03:02#
DECLARE @FinishedOn  -- DateTime
SET     @FinishedOn = #1970-01-02#

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
	DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 86400000,
	DateDiff_Big('h', [r].[StartedOn], [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 3600000,
	DateDiff_Big('n', [r].[StartedOn], [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('n', DateDiff_Big('n', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 60000,
	DateDiff_Big('s', [r].[StartedOn], [r].[FinishedOn]) + DateDiff_Big('ms', DateAdd('s', DateDiff_Big('s', [r].[StartedOn], [r].[FinishedOn]), [r].[StartedOn]), [r].[FinishedOn]) / 1000,
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
	END MOD 60
FROM
	[EventRow] [r]

