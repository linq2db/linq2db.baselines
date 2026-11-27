-- SqlServer.2019
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 1, 2, 12, 0, 0, 0, 7)
DECLARE @high DateTime2
SET     @high = DATETIME2FROMPARTS(2020, 1, 2, 6, 0, 0, 0, 7)
DECLARE @value_1 Date
SET     @value_1 = DATETIME2FROMPARTS(2020, 1, 2, 12, 0, 0, 0, 7)
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	IIF(@value BETWEEN [r].[Day] AND @high, 1, 0),
	0,
	IIF(@value NOT BETWEEN [r].[Day] AND @high, 1, 0),
	1,
	IIF(@value BETWEEN [r].[Day] AND [r].[Stamp], 1, 0),
	IIF(@value_1 >= [r].[Day] AND @value <= [r].[Stamp], 1, 0),
	IIF(@value NOT BETWEEN Coalesce([d].[Day], DATEFROMPARTS(1, 1, 1)) AND @later, N'a', N'b')
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
ORDER BY
	[r].[Id]

-- SqlServer.2019
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 1, 2, 12, 0, 0, 0, 7)
DECLARE @later DateTime2
SET     @later = DATETIME2FROMPARTS(2020, 1, 3, 0, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
WHERE
	@value NOT BETWEEN [d].[Day] AND @later

-- SqlServer.2019
DECLARE @value DateTime2
SET     @value = DATETIME2FROMPARTS(2020, 1, 2, 12, 0, 0, 0, 7)
DECLARE @high DateTime2
SET     @high = DATETIME2FROMPARTS(2020, 1, 2, 6, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	@value BETWEEN [r].[Day] AND @high OR @value >= CAST([r].[Stamp] AS Date)
ORDER BY
	[r].[Id]

