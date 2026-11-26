-- Access.Jet.Odbc AccessODBC
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#
DECLARE @low DateTime
SET     @low = #2020-01-01 00:30:00#
DECLARE @high DateTime
SET     @high = #2020-01-03 00:30:00#
DECLARE @low DateTime
SET     @low = #2020-01-01 00:30:00#
DECLARE @high DateTime
SET     @high = #2020-01-03 00:30:00#

SELECT
	[r].[Day] BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[r].[Day] >= #2020-01-01 00:30:00# AND [r].[Day] <= #2020-01-03 00:30:00#,
	IIF([r].[Other] IS NULL, [r].[Day], [r].[Other]) BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	IIF([r].[Other] IS NULL, [r].[Day], [r].[Other]) >= #2020-01-01 00:30:00# AND IIF([r].[Other] IS NULL, [r].[Day], [r].[Other]) <= #2020-01-03 00:30:00#,
	[r].[Day] BETWEEN CVar(?) AND CVar(?),
	[r].[Day] >= CVar(?) AND [r].[Day] <= CVar(?),
	IIF([d].[Day] IS NULL, #0100-01-01#, [d].[Day]) BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[d].[Day] >= #2020-01-01 00:30:00# AND [d].[Day] IS NOT NULL AND [d].[Day] <= #2020-01-03 00:30:00#,
	[r].[Day] NOT BETWEEN CVar(?) AND CVar(?),
	[r].[Day] < CVar(?) OR [r].[Day] > CVar(?),
	[r].[Day] NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[r].[Day] < #2020-01-01 00:30:00# OR [r].[Day] > #2020-01-03 00:30:00#,
	IIF([d].[Day] IS NULL, #0100-01-01#, [d].[Day]) NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#,
	[d].[Day] IS NULL OR [d].[Day] < #2020-01-01 00:30:00# OR [d].[Day] > #2020-01-03 00:30:00#,
	[r].[Stamp] BETWEEN CVar(?) AND CVar(?),
	[r].[Stamp] >= CVar(?) AND [r].[Stamp] <= CVar(?)
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)

-- Access.Jet.Odbc AccessODBC
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] BETWEEN ? AND ?
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
DECLARE @low Date
SET     @low = #2020-01-01 00:30:00#
DECLARE @high Date
SET     @high = #2020-01-03 00:30:00#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] >= ? AND [r].[Day] <= ?
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] NOT BETWEEN #2020-01-01 00:30:00# AND #2020-01-03 00:30:00#
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] < #2020-01-01 00:30:00# OR [r].[Day] > #2020-01-03 00:30:00#
ORDER BY
	[r].[Id]

