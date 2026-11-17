-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff_Big('d', [r].[ClosedOn], Now) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now) / 86400000 > 300

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	DateDiff_Big('d', [r].[ClosedOn], Now) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now) / 86400000

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 2
	DateDiff_Big('d', [r].[ClosedOn], Now) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]), Now) / 86400000,
	CASE
		WHEN Now >= DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn]), Now), DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn])) > Now
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn]), Now) - 1
		WHEN Now < DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn]), Now), DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn])) < Now
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn]), Now) + 1
		ELSE DateDiff_Big('h', DateAdd('d', CASE
			WHEN Now >= [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) > Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) - 1
			WHEN Now < [r].[ClosedOn] AND DateAdd('d', DateDiff_Big('d', [r].[ClosedOn], Now), [r].[ClosedOn]) < Now
				THEN DateDiff_Big('d', [r].[ClosedOn], Now) + 1
			ELSE DateDiff_Big('d', [r].[ClosedOn], Now)
		END, [r].[ClosedOn]), Now)
	END MOD 24
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

