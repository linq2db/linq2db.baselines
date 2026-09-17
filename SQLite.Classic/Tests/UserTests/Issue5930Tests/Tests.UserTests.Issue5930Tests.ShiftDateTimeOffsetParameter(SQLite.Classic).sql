-- SQLite.Classic SQLite
DECLARE @start VarChar(25) -- AnsiString
SET     @start = '2026-09-15 12:00:00+05:45'

SELECT
	strftime('%Y-%m-%d %H:%M:%f', @start, CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second', CASE
		WHEN Substr(@start, -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr(@start, -6)
		ELSE '+00:00'
	END) || CASE
		WHEN Substr(@start, -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr(@start, -6)
		ELSE '+00:00'
	END
FROM
	[OffsetTaskRow] [r]
LIMIT 2

