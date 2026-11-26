-- Sybase.Managed Sybase
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'
DECLARE @value_1 Date
SET     @value_1 = '2020-01-02 12:00:00.000'

SELECT
	0,
	0,
	1,
	1,
	CASE
		WHEN @value >= CAST([r].[Day] AS DateTime) AND @value <= [r].[Stamp]
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN @value_1 >= [r].[Day] AND @value <= [r].[Stamp] THEN 1
		ELSE 0
	END,
	CASE
		WHEN @value < CAST(Coalesce([d].[Day], CAST('1753-01-01 00:00:00.000' AS Date)) AS DateTime)
			THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
WHERE
	@value < CAST([d].[Day] AS DateTime)

-- Sybase.Managed Sybase
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value >= CONVERT(Date, [r].[Stamp])
ORDER BY
	[r].[Id]

