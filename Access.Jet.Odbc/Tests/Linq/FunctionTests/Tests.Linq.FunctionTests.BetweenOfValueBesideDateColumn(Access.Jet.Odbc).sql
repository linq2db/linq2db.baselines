-- Access.Jet.Odbc AccessODBC
DECLARE @value DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @high DateTime
SET     @high = #2020-01-02 06:00:00#
DECLARE @value DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @high DateTime
SET     @high = #2020-01-02 06:00:00#
DECLARE @value DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @value Date
SET     @value = #2020-01-02 12:00:00#
DECLARE @value DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @value DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	CVar(?) BETWEEN [r].[Day] AND CVar(?),
	False,
	CVar(?) NOT BETWEEN [r].[Day] AND CVar(?),
	True,
	CVar(?) BETWEEN [r].[Day] AND [r].[Stamp],
	CVar(?) >= [r].[Day] AND CVar(?) <= [r].[Stamp],
	IIF(CVar(?) NOT BETWEEN IIF([d].[Day] IS NULL, #0100-01-01#, [d].[Day]) AND CVar(?), 'a', 'b')
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)
ORDER BY
	[r].[Id]

-- Access.Jet.Odbc AccessODBC
DECLARE @value DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON ([d].[Id] = [r].[Id] - 1)
WHERE
	? NOT BETWEEN [d].[Day] AND ?

