-- SqlServer.2008.MS SqlServer.2008
DECLARE @low Date
SET     @low = CAST('2020-01-01T00:30:00.0000000' AS DATETIME2)
DECLARE @high Date
SET     @high = CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)

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

