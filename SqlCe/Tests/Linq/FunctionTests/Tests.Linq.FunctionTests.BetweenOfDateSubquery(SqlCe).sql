-- SqlCe
DECLARE @low DateTime
SET     @low = '2020-01-01 00:30:00.000'
DECLARE @high DateTime
SET     @high = '2020-01-03 00:30:00.000'

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

