-- SQLite.MS SQLite
DECLARE @fallback Text(23) -- DateTime
SET     @fallback = '2026-05-25 09:00:00.000'

SELECT
	LAG([r].[Value], 1, @fallback) OVER (ORDER BY [r].[Id])
FROM
	[CoarseConvertedRow] [r]
ORDER BY
	[r].[Id]

