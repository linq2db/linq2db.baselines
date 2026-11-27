-- SqlServer.2008
DECLARE @low Time
SET     @low = CAST('01:30:00.0000000' AS TIME)
DECLARE @high Time
SET     @high = CAST('03:00:00.0000000' AS TIME)

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- SqlServer.2008
DECLARE @low Time
SET     @low = CAST('01:30:00.0000000' AS TIME)
DECLARE @high Time
SET     @high = CAST('03:00:00.0000000' AS TIME)

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @low AND @high
ORDER BY
	[r].[Id]

