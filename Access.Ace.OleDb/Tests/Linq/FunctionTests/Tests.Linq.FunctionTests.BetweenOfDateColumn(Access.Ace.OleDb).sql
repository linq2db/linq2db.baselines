-- Access.Ace.OleDb AccessOleDb
DECLARE @low DBDate -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high DBDate -- Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low_1 DBDate -- Date
SET     @low_1 = #2020-01-01 00:30:00#
DECLARE @high_1 DBDate -- Date
SET     @high_1 = #2020-01-03 00:30:00#
DECLARE @low_2 DBDate -- Date
SET     @low_2 = #2020-01-01 00:30:00#
DECLARE @high_2 DBDate -- Date
SET     @high_2 = #2020-01-03 00:30:00#
DECLARE @low_3 DBDate -- Date
SET     @low_3 = #2020-01-01 00:30:00#
DECLARE @high_3 DBDate -- Date
SET     @high_3 = #2020-01-03 00:30:00#
DECLARE @low_4 Date -- DateTime
SET     @low_4 = #2020-01-01 00:30:00#
DECLARE @high_4 Date -- DateTime
SET     @high_4 = #2020-01-03 00:30:00#
DECLARE @low_5 Date -- DateTime
SET     @low_5 = #2020-01-01 00:30:00#
DECLARE @high_5 Date -- DateTime
SET     @high_5 = #2020-01-03 00:30:00#

SELECT
	[r].[Day] BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[r].[Day] >= #2020-01-01 00:30:00# AND [r].[Day] <= #2020-01-03 00:30:00#,
	IIF([r].[Other] IS NULL, [r].[Day], [r].[Other]) BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	IIF([r].[Other] IS NULL, [r].[Day], [r].[Other]) >= #2020-01-01 00:30:00# AND IIF([r].[Other] IS NULL, [r].[Day], [r].[Other]) <= #2020-01-03 00:30:00#,
	[r].[Day] BETWEEN CVar(@low) AND CVar(@high),
	[r].[Day] >= CVar(@low_1) AND [r].[Day] <= CVar(@high_1),
	IIF([d].[Day] IS NULL, #0100-01-01#, [d].[Day]) BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[d].[Day] >= #2020-01-01 00:30:00# AND [d].[Day] IS NOT NULL AND [d].[Day] <= #2020-01-03 00:30:00#,
	[r].[Day] NOT BETWEEN CVar(@low_2) AND CVar(@high_2),
	[r].[Day] < CVar(@low_3) OR [r].[Day] > CVar(@high_3),
	[r].[Day] NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[r].[Day] < #2020-01-01 00:30:00# OR [r].[Day] > #2020-01-03 00:30:00#,
	IIF([d].[Day] IS NULL, #0100-01-01#, [d].[Day]) NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[d].[Day] IS NULL OR [d].[Day] < #2020-01-01 00:30:00# OR [d].[Day] > #2020-01-03 00:30:00#,
	[r].[Stamp] BETWEEN CVar(@low_4) AND CVar(@high_4),
	[r].[Stamp] >= CVar(@low_5) AND [r].[Stamp] <= CVar(@high_5)
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)

-- Access.Ace.OleDb AccessOleDb
DECLARE @low DBDate -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high DBDate -- Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @low DBDate -- Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high DBDate -- Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] >= @low AND [r].[Day] <= @high
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] < #2020-01-01 00:30:00# OR [r].[Day] > #2020-01-03 00:30:00#
ORDER BY
	[r].[Id]

