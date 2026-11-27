-- SqlServer.2005.MS SqlServer.2005
DECLARE @low DateTime
SET     @low = CAST('2020-01-01T00:00:00.000' AS DATETIME)
DECLARE @high DateTime
SET     @high = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	CASE
		WHEN [t1].[maxDay] BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[maxDay] >= @low AND [t1].[maxDay] <= @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[maxDay] NOT BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[maxDay] < @low OR [t1].[maxDay] > @high THEN 1
		ELSE 0
	END
FROM
	(
		SELECT
			(
				SELECT
					MAX([x].[Day])
				FROM
					[BetweenDayRow] [x]
				WHERE
					[x].[Id] = [r].[Id]
			) as [maxDay]
		FROM
			[BetweenDayRow] [r]
	) [t1]

