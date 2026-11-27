-- Access.Jet.Odbc AccessODBC
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? BETWEEN [r].[Day] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? NOT BETWEEN [r].[Day] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? NOT BETWEEN [r].[Stamp] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? NOT BETWEEN [r].[Day] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? NOT BETWEEN [r].[Stamp] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @value DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? NOT BETWEEN [r].[Day] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @none DateTime
SET     @none = NULL
DECLARE @high DateTime
SET     @high = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? NOT BETWEEN [r].[Day] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @some DateTime
SET     @some = #2020-01-02 12:00:00#
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	? NOT BETWEEN [r].[Day] AND ?

-- Access.Jet.Odbc AccessODBC
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = #2020-01-03#

SELECT
	IIF(CVar(?) NOT BETWEEN [r].[Day] AND CVar(?), 'a', 'b')
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

