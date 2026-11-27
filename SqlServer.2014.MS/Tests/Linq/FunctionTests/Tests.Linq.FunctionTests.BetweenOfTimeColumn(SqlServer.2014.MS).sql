-- SqlServer.2014.MS SqlServer.2014
DECLARE @low Time
SET     @low = TIMEFROMPARTS(1, 30, 0, 0, 7)
DECLARE @high Time
SET     @high = TIMEFROMPARTS(3, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- SqlServer.2014.MS SqlServer.2014
DECLARE @low Time
SET     @low = TIMEFROMPARTS(1, 30, 0, 0, 7)
DECLARE @high Time
SET     @high = TIMEFROMPARTS(3, 0, 0, 0, 7)

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @low AND @high
ORDER BY
	[r].[Id]

