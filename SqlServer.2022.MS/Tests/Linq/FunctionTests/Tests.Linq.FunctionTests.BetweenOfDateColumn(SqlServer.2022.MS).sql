-- SqlServer.2022.MS SqlServer.2022
DECLARE @low Date
SET     @low = DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7)
DECLARE @high Date
SET     @high = DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7)
DECLARE @low_1 DateTime2
SET     @low_1 = DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7)
DECLARE @high_1 DateTime2
SET     @high_1 = DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7)

SELECT
	IIF([r].[Day] BETWEEN DATEFROMPARTS(2020, 1, 1) AND DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF([r].[Day] >= DATEFROMPARTS(2020, 1, 1) AND [r].[Day] <= DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF(Coalesce([r].[Other], [r].[Day]) BETWEEN DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7) AND DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7), 1, 0),
	IIF(Coalesce([r].[Other], [r].[Day]) >= DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7) AND Coalesce([r].[Other], [r].[Day]) <= DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7), 1, 0),
	IIF([r].[Day] BETWEEN @low AND @high, 1, 0),
	IIF([r].[Day] >= @low AND [r].[Day] <= @high, 1, 0),
	IIF(Coalesce([d].[Day], DATEFROMPARTS(1, 1, 1)) BETWEEN DATEFROMPARTS(2020, 1, 1) AND DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF(Coalesce([d].[Day], DATEFROMPARTS(1, 1, 1)) >= DATEFROMPARTS(2020, 1, 1) AND Coalesce([d].[Day], DATEFROMPARTS(1, 1, 1)) <= DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF([r].[Day] NOT BETWEEN @low AND @high, 1, 0),
	IIF([r].[Day] < @low OR [r].[Day] > @high, 1, 0),
	IIF([r].[Day] NOT BETWEEN DATEFROMPARTS(2020, 1, 1) AND DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF([r].[Day] < DATEFROMPARTS(2020, 1, 1) OR [r].[Day] > DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF(Coalesce([d].[Day], DATEFROMPARTS(1, 1, 1)) NOT BETWEEN DATEFROMPARTS(2020, 1, 1) AND DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF(Coalesce([d].[Day], DATEFROMPARTS(1, 1, 1)) < DATEFROMPARTS(2020, 1, 1) OR Coalesce([d].[Day], DATEFROMPARTS(1, 1, 1)) > DATEFROMPARTS(2020, 1, 3), 1, 0),
	IIF([t1].[Subquery] BETWEEN @low AND @high, 1, 0),
	IIF([t1].[Subquery] >= @low AND [t1].[Subquery] <= @high, 1, 0),
	IIF([r].[Stamp] BETWEEN @low_1 AND @high_1, 1, 0),
	IIF([r].[Stamp] >= @low_1 AND [r].[Stamp] <= @high_1, 1, 0)
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1
		OUTER APPLY (
			SELECT
				MAX([x].[Day]) as [Subquery]
			FROM
				[BetweenDayRow] [x]
			WHERE
				[x].[Id] = [r].[Id]
		) [t1]

-- SqlServer.2022.MS SqlServer.2022
DECLARE @low Date
SET     @low = DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7)
DECLARE @high Date
SET     @high = DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022
DECLARE @low Date
SET     @low = DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7)
DECLARE @high Date
SET     @high = DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] >= @low AND [r].[Day] <= @high
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] NOT BETWEEN DATEFROMPARTS(2020, 1, 1) AND DATEFROMPARTS(2020, 1, 3)
ORDER BY
	[r].[Id]

-- SqlServer.2022.MS SqlServer.2022
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] < DATEFROMPARTS(2020, 1, 1) OR [r].[Day] > DATEFROMPARTS(2020, 1, 3)
ORDER BY
	[r].[Id]

