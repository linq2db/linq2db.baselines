-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @low  -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high  -- Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low_1  -- DateTime
SET     @low_1 = #2020-01-01 00:30:00#
DECLARE @high_1  -- DateTime
SET     @high_1 = #2020-01-03 00:30:00#

SELECT
	[r].[Day] BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[r].[Day] >= #2020-01-01 00:30:00# AND [r].[Day] <= #2020-01-03 00:30:00#,
	CASE
		WHEN [r].[Other] IS NULL THEN [r].[Day]
		ELSE [r].[Other]
	END BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	CASE
		WHEN [r].[Other] IS NULL THEN [r].[Day]
		ELSE [r].[Other]
	END >= #2020-01-01 00:30:00# AND CASE
		WHEN [r].[Other] IS NULL THEN [r].[Day]
		ELSE [r].[Other]
	END <= #2020-01-03 00:30:00#,
	[r].[Day] BETWEEN CVar(@low) AND CVar(@high),
	[r].[Day] >= CVar(@low) AND [r].[Day] <= CVar(@high),
	CASE
		WHEN [d].[Day] IS NULL THEN #0100-01-01#
		ELSE [d].[Day]
	END BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[d].[Day] >= #2020-01-01 00:30:00# AND [d].[Day] IS NOT NULL AND [d].[Day] <= #2020-01-03 00:30:00#,
	[r].[Day] NOT BETWEEN CVar(@low) AND CVar(@high),
	[r].[Day] < CVar(@low) OR [r].[Day] > CVar(@high),
	[r].[Day] NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[r].[Day] < #2020-01-01 00:30:00# OR [r].[Day] > #2020-01-03 00:30:00#,
	CASE
		WHEN [d].[Day] IS NULL THEN #0100-01-01#
		ELSE [d].[Day]
	END NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[d].[Day] IS NULL OR [d].[Day] < #2020-01-01 00:30:00# OR [d].[Day] > #2020-01-03 00:30:00#,
	[r].[Stamp] BETWEEN CVar(@low_1) AND CVar(@high_1),
	[r].[Stamp] >= CVar(@low_1) AND [r].[Stamp] <= CVar(@high_1)
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @low  -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high  -- Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @low  -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high  -- Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] >= @low AND [r].[Day] <= @high
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#
ORDER BY
	[r].[Id]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] < #2020-01-01 00:30:00# OR [r].[Day] > #2020-01-03 00:30:00#
ORDER BY
	[r].[Id]

