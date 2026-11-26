-- SqlServer.2008
DECLARE @value DateTime2
SET     @value = CAST('2020-01-02T12:00:00.0000000' AS DATETIME2)
DECLARE @high DateTime2
SET     @high = CAST('2020-01-02T06:00:00.0000000' AS DATETIME2)
DECLARE @value_1 Date
SET     @value_1 = CAST('2020-01-02T12:00:00.0000000' AS DATETIME2)
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

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
		WHEN @value NOT BETWEEN Coalesce([d].[Day], CAST('0001-01-01' AS DATE)) AND @later
			THEN N'a'
		ELSE N'b'
	END
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
ORDER BY
	[r].[Id]

-- SqlServer.2008
DECLARE @value DateTime2
SET     @value = CAST('2020-01-02T12:00:00.0000000' AS DATETIME2)
DECLARE @later DateTime2
SET     @later = CAST('2020-01-03T00:00:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
WHERE
	@value NOT BETWEEN [d].[Day] AND @later

