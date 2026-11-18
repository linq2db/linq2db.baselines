-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]), [r].[ClosedOn]) / 86400000 < 12

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	DateDiff_Big('h', [r].[OpenedOn], [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]), [r].[ClosedOn]) / 3600000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]), [r].[ClosedOn]) / 86400000,
	DateDiff_Big('h', [r].[OpenedOn], [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]), [r].[ClosedOn]) / 3600000,
	DateDiff_Big('n', [r].[OpenedOn], [r].[ClosedOn]) + DateDiff_Big('ms', DateAdd('n', DateDiff_Big('n', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]), [r].[ClosedOn]) / 60000,
	CASE
		WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
			THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
		WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
			THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
		ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
	END,
	CASE
		WHEN [r].[ClosedOn] >= DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn]), [r].[ClosedOn]), DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn])) > [r].[ClosedOn]
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn]), [r].[ClosedOn]) - 1
		WHEN [r].[ClosedOn] < DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn]), [r].[ClosedOn]), DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn])) < [r].[ClosedOn]
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn]), [r].[ClosedOn]) + 1
		ELSE DateDiff_Big('h', DateAdd('d', CASE
			WHEN [r].[ClosedOn] >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) > [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) - 1
			WHEN [r].[ClosedOn] < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]), [r].[OpenedOn]) < [r].[ClosedOn]
				THEN DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn]) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], [r].[ClosedOn])
		END, [r].[OpenedOn]), [r].[ClosedOn])
	END MOD 24
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

