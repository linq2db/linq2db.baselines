-- SqlServer.2008
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none BETWEEN [r].[Day] AND @later

-- SqlServer.2008
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlServer.2008
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlServer.2008
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @later

-- SqlServer.2008
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Stamp] AND @later

-- SqlServer.2008
DECLARE @value DateTime2
SET     @value = CAST('2020-01-02T12:00:00.0000000' AS DATETIME2)
DECLARE @none DateTime2
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value NOT BETWEEN [r].[Day] AND @none

-- SqlServer.2008
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @high DateTime2
SET     @high = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@none NOT BETWEEN [r].[Day] AND @high

-- SqlServer.2008
DECLARE @some DateTime2
SET     @some = CAST('2020-01-02T12:00:00.0000000' AS DATETIME2)
DECLARE @none DateTime2
SET     @none = NULL

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@some NOT BETWEEN [r].[Day] AND @none

-- SqlServer.2008
DECLARE @none DateTime2
SET     @none = NULL
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	CASE
		WHEN @none NOT BETWEEN [r].[Day] AND @later THEN N'a'
		ELSE N'b'
	END
FROM
	[BetweenDayRow] [r]
ORDER BY
	[r].[Id]

