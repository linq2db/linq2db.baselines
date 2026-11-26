-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @high Date -- DateTime
SET     @high = #2020-01-02 06:00:00#
DECLARE @value_1 Date -- DateTime
SET     @value_1 = #2020-01-02 12:00:00#
DECLARE @high_1 Date -- DateTime
SET     @high_1 = #2020-01-02 06:00:00#
DECLARE @value_2 Date -- DateTime
SET     @value_2 = #2020-01-02 12:00:00#
DECLARE @value_3 DBDate -- Date
SET     @value_3 = #2020-01-02 12:00:00#
DECLARE @value_4 Date -- DateTime
SET     @value_4 = #2020-01-02 12:00:00#
DECLARE @value_5 Date -- DateTime
SET     @value_5 = #2020-01-02 12:00:00#
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	CVar(@value) BETWEEN [r].[Day] AND CVar(@high),
	False,
	CVar(@value_1) NOT BETWEEN [r].[Day] AND CVar(@high_1),
	True,
	CVar(@value_2) BETWEEN [r].[Day] AND [r].[Stamp],
	CVar(@value_3) >= [r].[Day] AND CVar(@value_4) <= [r].[Stamp],
	IIF(CVar(@value_5) NOT BETWEEN IIF([d].[Day] IS NULL, #0100-01-01#, [d].[Day]) AND CVar(@later), 'a', 'b')
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)
ORDER BY
	[r].[Id]

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)
WHERE
	@value NOT BETWEEN [d].[Day] AND @later

-- Access.Ace.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @high Date -- DateTime
SET     @high = #2020-01-02 06:00:00#
DECLARE @value_1 Date -- DateTime
SET     @value_1 = #2020-01-02 12:00:00#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value BETWEEN [r].[Day] AND @high OR @value_1 >= DateValue([r].[Stamp])
ORDER BY
	[r].[Id]

