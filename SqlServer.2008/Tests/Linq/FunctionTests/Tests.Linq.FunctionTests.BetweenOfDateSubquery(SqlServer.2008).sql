-- SqlServer.2008
DECLARE @low Date
SET     @low = CAST('2020-01-01T00:30:00.0000000' AS DATETIME2)
DECLARE @high Date
SET     @high = CAST('2020-01-03T00:30:00.0000000' AS DATETIME2)

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

