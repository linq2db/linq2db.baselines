-- SqlCe
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'
DECLARE @high DateTime
SET     @high = '2020-01-02 06:00:00.000'
DECLARE @value_1 DateTime
SET     @value_1 = '2020-01-02 12:00:00.000'
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

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
		WHEN @value NOT BETWEEN Coalesce([d].[Day], '1753-01-01 00:00:00.000') AND @later
			THEN 'a'
		ELSE 'b'
	END
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
ORDER BY
	[r].[Id]

-- SqlCe
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'
DECLARE @later DateTime
SET     @later = '2020-01-03 00:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
WHERE
	@value NOT BETWEEN [d].[Day] AND @later

-- SqlCe
DECLARE @value DateTime
SET     @value = '2020-01-02 12:00:00.000'
DECLARE @high DateTime
SET     @high = '2020-01-02 06:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value BETWEEN [r].[Day] AND @high OR @value >= CAST(CONVERT(NVarChar(10), [r].[Stamp], 101) AS DateTime)
ORDER BY
	[r].[Id]

