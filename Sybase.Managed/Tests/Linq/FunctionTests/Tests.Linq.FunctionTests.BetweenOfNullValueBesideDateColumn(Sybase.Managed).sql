-- Sybase.Managed Sybase
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	1 = 0

-- Sybase.Managed Sybase
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none < CAST([r].[Day] AS DateTime)

-- Sybase.Managed Sybase
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- Sybase.Managed Sybase
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none < CAST([r].[Day] AS DateTime)

-- Sybase.Managed Sybase
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- Sybase.Managed Sybase
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value < CAST([r].[Day] AS DateTime)

-- Sybase.Managed Sybase
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none < CAST([r].[Day] AS DateTime)

-- Sybase.Managed Sybase
DECLARE @some DateTime
SET     @some = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@some < CAST([r].[Day] AS DateTime)

-- Sybase.Managed Sybase
DECLARE @none DateTime
SET     @none = NULL

SELECT
	CASE
		WHEN @none < CAST([r].[Day] AS DateTime) THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

