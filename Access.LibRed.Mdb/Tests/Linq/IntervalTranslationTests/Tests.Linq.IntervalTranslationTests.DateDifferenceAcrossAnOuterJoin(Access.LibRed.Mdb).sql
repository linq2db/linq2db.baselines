-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) / 86400000
	END
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
ORDER BY
	[x].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
			THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
		WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
			THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
		ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
	END
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
ORDER BY
	[x].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE CASE
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
			ELSE DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
		END MOD 24
	END
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
ORDER BY
	[x].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE CASE
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('n', DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('n', DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
			ELSE DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
		END MOD 60
	END
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
ORDER BY
	[x].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE CASE
			WHEN [x].[StartedOn] >= DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) > [x].[StartedOn]
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) - 1
			WHEN [x].[StartedOn] < DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) < [x].[StartedOn]
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) + 1
			ELSE DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn])
		END MOD 24
	END
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
ORDER BY
	[x].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE DateDiff_Big('h', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) / 3600000
	END
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
ORDER BY
	[x].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
WHERE
	DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) / 86400000 > 1 AND
	[b].[FinishedOn] IS NOT NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Hours  -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
WHERE
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE CASE
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
			ELSE DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
		END MOD 24
	END = @Hours

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Minutes  -- Int32
SET     @Minutes = 15

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
WHERE
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE CASE
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('n', DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
			WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]) AND DateAdd('n', DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn])) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
				THEN DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
			ELSE DateDiff_Big('n', DateAdd('d', CASE
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) >= [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) > IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) - 1
				WHEN IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) < [x].[StartedOn] AND DateAdd('d', DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])
					THEN DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) + 1
				ELSE DateDiff_Big('d', [x].[StartedOn], IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
			END, [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))
		END MOD 60
	END = @Minutes

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
WHERE
	DateDiff_Big('h', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) / 3600000 < -1 AND
	[b].[FinishedOn] IS NOT NULL

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Hours  -- Int32
SET     @Hours = 3

SELECT
	[x].[Id]
FROM
	[OuterJoinLeft] [x]
		LEFT JOIN [OuterJoinRight] [b] ON ([b].[Id] = [x].[Id])
WHERE
	CASE
		WHEN [b].[FinishedOn] IS NULL THEN NULL
		ELSE CASE
			WHEN [x].[StartedOn] >= DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) > [x].[StartedOn]
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) - 1
			WHEN [x].[StartedOn] < DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]), DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]))) < [x].[StartedOn]
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn]) + 1
			ELSE DateDiff_Big('h', DateAdd('d', CASE
				WHEN [x].[StartedOn] >= IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) > [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) - 1
				WHEN [x].[StartedOn] < IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]) AND DateAdd('d', DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]), IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])) < [x].[StartedOn]
					THEN DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn]) + 1
				ELSE DateDiff_Big('d', IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn]), [x].[StartedOn])
			END, IIF(IsNull([b].[FinishedOn]), #1899-12-30#, [b].[FinishedOn])), [x].[StartedOn])
		END MOD 24
	END = -@Hours

