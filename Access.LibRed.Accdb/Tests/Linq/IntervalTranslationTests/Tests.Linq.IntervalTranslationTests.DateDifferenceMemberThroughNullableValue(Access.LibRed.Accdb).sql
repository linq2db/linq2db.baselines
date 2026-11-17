-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) / 86400000 > 0 AND
	[r].[ClosedOnNullable] IS NOT NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff_Big('h', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) / 3600000 > 0 AND
	[r].[ClosedOnNullable] IS NOT NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @asOf  -- DateTime
SET     @asOf = #2026-01-03 13:30:00#

SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	DateDiff_Big('d', IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]), @asOf) + DateDiff_Big('ms', DateAdd('d', DateDiff_Big('d', IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]), @asOf), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), @asOf) / 86400000 > 0 AND
	[r].[ClosedOnNullable] IS NOT NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT TOP 2
	CASE
		WHEN [r].[ClosedOnNullable] IS NULL THEN NULL
		ELSE DateDiff_Big('h', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + DateDiff_Big('ms', DateAdd('h', DateDiff_Big('h', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) / 3600000
	END
FROM
	[ClosedPeriodRow] [r]
WHERE
	[r].[Id] = 1

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CASE
		WHEN [r].[ClosedOnNullable] IS NULL THEN NULL
		WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
			THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
		WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
			THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
		ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
	END > 0

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[ClosedPeriodRow] [r]
WHERE
	CASE
		WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn])) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
		WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn])) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
			THEN DateDiff_Big('h', DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
		ELSE DateDiff_Big('h', DateAdd('d', CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
	END MOD 24 > 0 AND
	[r].[ClosedOnNullable] IS NOT NULL

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	CASE
		WHEN [r].[ClosedOnNullable] IS NULL THEN NULL
		WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
			THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
		WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
			THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
		ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
	END,
	CASE
		WHEN [r].[ClosedOnNullable] IS NULL THEN NULL
		ELSE CASE
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn])) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
			WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn]) AND DateAdd('h', DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn])) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
				THEN DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
			ELSE DateDiff_Big('h', DateAdd('d', CASE
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) >= [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) > IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) - 1
				WHEN IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]) < [r].[OpenedOn] AND DateAdd('d', DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])), [r].[OpenedOn]) < IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])
					THEN DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable])) + 1
				ELSE DateDiff_Big('d', [r].[OpenedOn], IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
			END, [r].[OpenedOn]), IIF(IsNull([r].[ClosedOnNullable]), #1899-12-30#, [r].[ClosedOnNullable]))
		END MOD 24
	END
FROM
	[ClosedPeriodRow] [r]
ORDER BY
	[r].[Id]

