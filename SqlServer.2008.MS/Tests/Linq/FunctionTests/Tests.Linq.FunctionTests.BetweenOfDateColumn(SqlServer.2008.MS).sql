-- SqlServer.2008.MS SqlServer.2008
DECLARE @low Date
SET     @low = CAST('2020-01-01T00:30:00.0000000' AS DATETIME2)
DECLARE @high Date
SET     @high = CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)
DECLARE @low_1 DateTime2
SET     @low_1 = CAST('2020-01-01T00:30:00.0000000' AS DATETIME2)
DECLARE @high_1 DateTime2
SET     @high_1 = CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)

SELECT
	CASE
		WHEN [r].[Day] BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] >= CAST('2020-01-01' AS DATE) AND [r].[Day] <= CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[Other], [r].[Day]) BETWEEN CAST('2020-01-01T00:30:00.0000000' AS DATETIME2) AND CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[Other], [r].[Day]) >= CAST('2020-01-01T00:30:00.0000000' AS DATETIME2) AND Coalesce([r].[Other], [r].[Day]) <= CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] >= @low AND [r].[Day] <= @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], CAST('0001-01-01' AS DATE)) BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], CAST('0001-01-01' AS DATE)) >= CAST('2020-01-01' AS DATE) AND Coalesce([d].[Day], CAST('0001-01-01' AS DATE)) <= CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] NOT BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] < @low OR [r].[Day] > @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] NOT BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] < CAST('2020-01-01' AS DATE) OR [r].[Day] > CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], CAST('0001-01-01' AS DATE)) NOT BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], CAST('0001-01-01' AS DATE)) < CAST('2020-01-01' AS DATE) OR Coalesce([d].[Day], CAST('0001-01-01' AS DATE)) > CAST('2020-01-03' AS DATE)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Stamp] BETWEEN @low_1 AND @high_1 THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Stamp] >= @low_1 AND [r].[Stamp] <= @high_1 THEN 1
		ELSE 0
	END
FROM
	[BetweenDayRow] [r]
		LEFT JOIN [BetweenDayRow] [d] ON [d].[Id] = [r].[Id] - 1

-- SqlServer.2008.MS SqlServer.2008
DECLARE @low Date
SET     @low = CAST('2020-01-01T00:30:00.0000000' AS DATETIME2)
DECLARE @high Date
SET     @high = CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008
DECLARE @low Date
SET     @low = CAST('2020-01-01T00:30:00.0000000' AS DATETIME2)
DECLARE @high Date
SET     @high = CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] >= @low AND [r].[Day] <= @high
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] NOT BETWEEN CAST('2020-01-01' AS DATE) AND CAST('2020-01-03' AS DATE)
ORDER BY
	[r].[Id]

-- SqlServer.2008.MS SqlServer.2008
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] < CAST('2020-01-01' AS DATE) OR [r].[Day] > CAST('2020-01-03' AS DATE)
ORDER BY
	[r].[Id]

