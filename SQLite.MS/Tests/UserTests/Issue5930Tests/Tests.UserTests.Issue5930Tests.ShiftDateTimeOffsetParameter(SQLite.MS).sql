-- SQLite.MS SQLite
DECLARE @start  -- DateTimeOffset
SET     @start = '2026-09-15 12:00:00+05:45'

SELECT
	CASE
		WHEN Substr(@start, -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr(@start, 1, Length(@start) - 6), CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr(@start, -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', @start, CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
	END
FROM
	[OffsetTaskRow] [r]
LIMIT 2

