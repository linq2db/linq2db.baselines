-- SqlServer.2005
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none BETWEEN [r].[Day] AND @later

-- SqlServer.2005
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlServer.2005
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlServer.2005
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlServer.2005
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2020-01-02T12:00:00.000' AS DATETIME)
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value NOT BETWEEN [r].[Day] AND @none

-- SqlServer.2005
DECLARE @none DateTime
SET     @none = NULL
DECLARE @high DateTime
SET     @high = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @high

-- SqlServer.2005
DECLARE @some DateTime
SET     @some = CAST('2020-01-02T12:00:00.000' AS DATETIME)
DECLARE @none DateTime
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@some NOT BETWEEN [r].[Day] AND @none

-- SqlServer.2005
DECLARE @none DateTime
SET     @none = NULL
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	CASE
		WHEN @none NOT BETWEEN [r].[Day] AND @later THEN N'a'
		ELSE N'b'
	END
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

