-- SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2020-01-02T12:00:00.000' AS DATETIME)
DECLARE @high DateTime
SET     @high = CAST('2020-01-02T06:00:00.000' AS DATETIME)
DECLARE @value_1 DateTime
SET     @value_1 = CAST('2020-01-02T00:00:00.000' AS DATETIME)
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	CASE
		WHEN @value BETWEEN [r].[Day] AND @high THEN 1
		ELSE 0
	END,
	0,
	CASE
		WHEN @value NOT BETWEEN [r].[Day] AND @high THEN 1
		ELSE 0
	END,
	1,
	CASE
		WHEN @value BETWEEN [r].[Day] AND [r].[Stamp] THEN 1
		ELSE 0
	END,
	CASE
		WHEN @value_1 >= [r].[Day] AND @value <= [r].[Stamp] THEN 1
		ELSE 0
	END,
	CASE
		WHEN @value NOT BETWEEN Coalesce([d].[Day], CAST('1753-01-01' AS DATETIME)) AND @later
			THEN N'a'
		ELSE N'b'
	END
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
ORDER BY
	[r].[Id]

-- SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2020-01-02T12:00:00.000' AS DATETIME)
DECLARE @later DateTime
SET     @later = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
WHERE
	@value NOT BETWEEN [d].[Day] AND @later

-- SqlServer.2005
DECLARE @value DateTime
SET     @value = CAST('2020-01-02T12:00:00.000' AS DATETIME)
DECLARE @high DateTime
SET     @high = CAST('2020-01-02T06:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value BETWEEN [r].[Day] AND @high OR @value >= DateAdd(dd, DateDiff(dd, 0, [r].[Stamp]), 0)
ORDER BY
	[r].[Id]

