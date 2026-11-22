-- SqlServer.2005.MS SqlServer.2005
DECLARE @low DateTime
SET     @low = CAST('2020-01-01T00:00:00.000' AS DATETIME)
DECLARE @high DateTime
SET     @high = CAST('2020-01-03T00:00:00.000' AS DATETIME)

SELECT
	CASE
		WHEN [t1].[InRange] BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[InRange] >= @low AND [t1].[InRange] <= @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[InRange] NOT BETWEEN @low AND @high THEN 1
		ELSE 0
	END,
	CASE
		WHEN [t1].[InRange] < @low OR [t1].[InRange] > @high THEN 1
		ELSE 0
	END
FROM
	[BetweenDayRow] [r]
		OUTER APPLY (
			SELECT
				MAX([x].[Day]) as [InRange]
			FROM
				[BetweenDayRow] [x]
			WHERE
				[x].[Id] = [r].[Id]
		) [t1]

