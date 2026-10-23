-- SQLite.MS SQLite
DECLARE @CoarseMidnight  -- Date
SET     @CoarseMidnight = '2026-06-01 00:00:00.000'

SELECT
	COUNT(*)
FROM
	[ConvertedDayPairRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', Coalesce([r].[ClosedOn], [r].[OpenedOn])) IN (@CoarseMidnight)

