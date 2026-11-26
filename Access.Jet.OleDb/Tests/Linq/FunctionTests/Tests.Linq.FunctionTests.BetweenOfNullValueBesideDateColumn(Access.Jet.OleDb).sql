-- Access.Jet.OleDb AccessOleDb
DECLARE @none Date -- DateTime
SET     @none = NULL
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none BETWEEN [r].[Day] AND @later

-- Access.Jet.OleDb AccessOleDb
DECLARE @none Date -- DateTime
SET     @none = NULL
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- Access.Jet.OleDb AccessOleDb
DECLARE @none Date -- DateTime
SET     @none = NULL
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- Access.Jet.OleDb AccessOleDb
DECLARE @none Date -- DateTime
SET     @none = NULL
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- Access.Jet.OleDb AccessOleDb
DECLARE @none Date -- DateTime
SET     @none = NULL
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- Access.Jet.OleDb AccessOleDb
DECLARE @value Date -- DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @none Date -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value NOT BETWEEN [r].[Day] AND @none

-- Access.Jet.OleDb AccessOleDb
DECLARE @none Date -- DateTime
SET     @none = NULL
DECLARE @high Date -- DateTime
SET     @high = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @high

-- Access.Jet.OleDb AccessOleDb
DECLARE @some Date -- DateTime
SET     @some = #2020-01-02 12:00:00#
DECLARE @none Date -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@some NOT BETWEEN [r].[Day] AND @none

-- Access.Jet.OleDb AccessOleDb
DECLARE @none Date -- DateTime
SET     @none = NULL
DECLARE @later Date -- DateTime
SET     @later = #2020-01-03#

SELECT
	IIF(CVar(@none) NOT BETWEEN [r].[Day] AND CVar(@later), 'a', 'b')
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

