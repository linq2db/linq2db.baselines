-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @none  -- DateTime
SET     @none = NULL
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none BETWEEN [r].[Day] AND @later

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @none  -- DateTime
SET     @none = NULL
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @none  -- DateTime
SET     @none = NULL
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @none  -- DateTime
SET     @none = NULL
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @none  -- DateTime
SET     @none = NULL
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @value  -- DateTime
SET     @value = #2020-01-02 12:00:00#
DECLARE @none  -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value NOT BETWEEN [r].[Day] AND @none

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @none  -- DateTime
SET     @none = NULL
DECLARE @high  -- DateTime
SET     @high = #2020-01-03#

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @high

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @some  -- DateTime
SET     @some = #2020-01-02 12:00:00#
DECLARE @none  -- DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@some NOT BETWEEN [r].[Day] AND @none

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @none  -- DateTime
SET     @none = NULL
DECLARE @later  -- DateTime
SET     @later = #2020-01-03#

SELECT
	CASE
		WHEN CVar(@none) NOT BETWEEN [r].[Day] AND CVar(@later) THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

