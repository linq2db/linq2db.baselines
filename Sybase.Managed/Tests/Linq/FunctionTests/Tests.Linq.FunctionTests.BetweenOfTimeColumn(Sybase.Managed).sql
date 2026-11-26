-- Sybase.Managed Sybase
DECLARE @low Time
SET     @low = '1900-01-01 01:30:00.000'
DECLARE @high Time
SET     @high = '1900-01-01 03:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- Sybase.Managed Sybase
DECLARE @low Time
SET     @low = '1900-01-01 01:30:00.000'
DECLARE @high Time
SET     @high = '1900-01-01 03:00:00.000'

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @low AND @high
ORDER BY
	[r].[Id]

