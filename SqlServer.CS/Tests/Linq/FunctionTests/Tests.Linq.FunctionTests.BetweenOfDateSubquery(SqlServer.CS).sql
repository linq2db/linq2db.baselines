-- SqlServer.CS SqlServer.2025
DECLARE @low Date
SET     @low = DATETIME2FROMPARTS(2020, 1, 1, 0, 30, 0, 0, 7)
DECLARE @high Date
SET     @high = DATETIME2FROMPARTS(2020, 1, 3, 0, 30, 0, 0, 7)

SELECT
	IIF([t1].[maxDay] BETWEEN @low AND @high, 1, 0),
	IIF([t1].[maxDay] >= @low AND [t1].[maxDay] <= @high, 1, 0),
	IIF([t1].[maxDay] NOT BETWEEN @low AND @high, 1, 0),
	IIF([t1].[maxDay] < @low OR [t1].[maxDay] > @high, 1, 0)
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

