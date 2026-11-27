-- SqlCe
DECLARE @low DateTime
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high DateTime
SET     @high = '2020-01-03 00:30:00.000'
DECLARE @low_1 DateTime
SET     @low_1 = '2020-01-01 00:30:00.000'
DECLARE @high_1 DateTime
SET     @high_1 = '2020-01-03 00:30:00.000'

SELECT
	CASE
		WHEN [r].[Day] BETWEEN '2020-01-01 00:30:00.000' AND '2020-01-03 00:30:00.000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] >= '2020-01-01 00:30:00.000' AND [r].[Day] <= '2020-01-03 00:30:00.000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[Other], [r].[Day]) BETWEEN '2020-01-01 00:30:00.000' AND '2020-01-03 00:30:00.000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([r].[Other], [r].[Day]) >= '2020-01-01 00:30:00.000' AND Coalesce([r].[Other], [r].[Day]) <= '2020-01-03 00:30:00.000'
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
		WHEN Coalesce([d].[Day], '1753-01-01 00:00:00.000') BETWEEN '2020-01-01 00:30:00.000' AND '2020-01-03 00:30:00.000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], '1753-01-01 00:00:00.000') >= '2020-01-01 00:30:00.000' AND Coalesce([d].[Day], '1753-01-01 00:00:00.000') <= '2020-01-03 00:30:00.000'
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
		WHEN [r].[Day] NOT BETWEEN '2020-01-01 00:30:00.000' AND '2020-01-03 00:30:00.000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN [r].[Day] < '2020-01-01 00:30:00.000' OR [r].[Day] > '2020-01-03 00:30:00.000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], '1753-01-01 00:00:00.000') NOT BETWEEN '2020-01-01 00:30:00.000' AND '2020-01-03 00:30:00.000'
			THEN 1
		ELSE 0
	END,
	CASE
		WHEN Coalesce([d].[Day], '1753-01-01 00:00:00.000') < '2020-01-01 00:30:00.000' OR Coalesce([d].[Day], '1753-01-01 00:00:00.000') > '2020-01-03 00:30:00.000'
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

-- SqlCe
DECLARE @low DateTime
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high DateTime
SET     @high = '2020-01-03 00:30:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- SqlCe
DECLARE @low DateTime
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high DateTime
SET     @high = '2020-01-03 00:30:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] >= @low AND [r].[Day] <= @high
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] NOT BETWEEN '2020-01-01 00:30:00.000' AND '2020-01-03 00:30:00.000'
ORDER BY
	[r].[Id]

-- SqlCe
SELECT
	[r].[Id]
FROM
	[BetweenDayRow] [r]
WHERE
	[r].[Day] < '2020-01-01 00:30:00.000' OR [r].[Day] > '2020-01-03 00:30:00.000'
ORDER BY
	[r].[Id]

