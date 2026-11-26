-- SQLite.MS SQLite
DECLARE @low Text -- Time
SET     @low = 01:30:00
DECLARE @high Text -- Time
SET     @high = 03:00:00

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] BETWEEN @low AND @high
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
DECLARE @low Text -- Time
SET     @low = 01:30:00
DECLARE @high Text -- Time
SET     @high = 03:00:00

SELECT
	[r].[Id]
FROM
	[BetweenTimeRow] [r]
WHERE
	[r].[Value] NOT BETWEEN @low AND @high
ORDER BY
	[r].[Id]

