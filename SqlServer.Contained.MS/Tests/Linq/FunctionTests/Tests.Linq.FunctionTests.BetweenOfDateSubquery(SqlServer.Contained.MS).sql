-- SqlServer.Contained.MS SqlServer.2025
DECLARE @low Date
SET     @low = DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7)
DECLARE @high Date
SET     @high = DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7)

SELECT
	IIF([t1].[InRange] BETWEEN @low AND @high, 1, 0),
	IIF([t1].[InRange] >= @low AND [t1].[InRange] <= @high, 1, 0),
	IIF([t1].[InRange] NOT BETWEEN @low AND @high, 1, 0),
	IIF([t1].[InRange] < @low OR [t1].[InRange] > @high, 1, 0)
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

