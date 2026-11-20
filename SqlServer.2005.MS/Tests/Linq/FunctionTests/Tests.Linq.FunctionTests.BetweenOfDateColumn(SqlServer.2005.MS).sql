-- SqlServer.2005.MS SqlServer.2005
DECLARE @low DateTime
SET     @low = CAST('2020-01-01T00:00:00.000' AS DATETIME)
DECLARE @high DateTime
SET     @high = CAST('2020-01-03T00:00:00.000' AS DATETIME)
DECLARE @low_1 DateTime
SET     @low_1 = CAST('2020-01-01T00:30:00.000' AS DATETIME)
DECLARE @high_1 DateTime
SET     @high_1 = CAST('2020-01-03T00:30:00.000' AS DATETIME)

SELECT
	CASE
		WHEN [r].[Day] BETWEEN CAST('2020-01-01' AS DATETIME) AND CAST('2020-01-03' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] >= CAST('2020-01-01' AS DATETIME) AND [r].[Day] <= CAST('2020-01-03' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[Other], [r].[Day]) BETWEEN CAST('2020-01-01T00:30:00.000' AS DATETIME) AND CAST('2020-01-03T00:30:00.000' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[Other], [r].[Day]) >= CAST('2020-01-01T00:30:00.000' AS DATETIME) AND Coalesce([r].[Other], [r].[Day]) <= CAST('2020-01-03T00:30:00.000' AS DATETIME)
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
		WHEN Coalesce([d].[Day], CAST('1753-01-01' AS DATETIME)) BETWEEN CAST('2020-01-01' AS DATETIME) AND CAST('2020-01-03' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], CAST('1753-01-01' AS DATETIME)) >= CAST('2020-01-01' AS DATETIME) AND Coalesce([d].[Day], CAST('1753-01-01' AS DATETIME)) <= CAST('2020-01-03' AS DATETIME)
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
		WHEN [r].[Day] NOT BETWEEN CAST('2020-01-01' AS DATETIME) AND CAST('2020-01-03' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] < CAST('2020-01-01' AS DATETIME) OR [r].[Day] > CAST('2020-01-03' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], CAST('1753-01-01' AS DATETIME)) NOT BETWEEN CAST('2020-01-01' AS DATETIME) AND CAST('2020-01-03' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], CAST('1753-01-01' AS DATETIME)) < CAST('2020-01-01' AS DATETIME) OR Coalesce([d].[Day], CAST('1753-01-01' AS DATETIME)) > CAST('2020-01-03' AS DATETIME)
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[Subquery] BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[Subquery] >= @low AND [t1].[Subquery] <= @high
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
		OUTER APPLY (
			SELECT
				MAX([x].[Day]) as [Subquery]
			FROM
				[BetweenDayRow] [x]
			WHERE
				[x].[Id] = [r].[Id]
		) [t1]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @low DateTime
SET     @low = CAST('2020-01-01T00:00:00.000' AS DATETIME)
DECLARE @high DateTime
SET     @high = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005
DECLARE @low DateTime
SET     @low = CAST('2020-01-01T00:00:00.000' AS DATETIME)
DECLARE @high DateTime
SET     @high = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] >= @low AND [r].[Day] <= @high
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] NOT BETWEEN CAST('2020-01-01' AS DATETIME) AND CAST('2020-01-03' AS DATETIME)
ORDER BY
	[r].[Id]

-- SqlServer.2005.MS SqlServer.2005
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] < CAST('2020-01-01' AS DATETIME) OR [r].[Day] > CAST('2020-01-03' AS DATETIME)
ORDER BY
	[r].[Id]

