-- SQLite.Classic SQLite
SELECT
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second', CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr([r].[StartDateTime], -6)
		ELSE '+00:00'
	END) || CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr([r].[StartDateTime], -6)
		ELSE '+00:00'
	END
FROM
	[OffsetTaskRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetTaskRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second', CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr([r].[StartDateTime], -6)
		ELSE '+00:00'
	END) || CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr([r].[StartDateTime], -6)
		ELSE '+00:00'
	END IS NULL
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @cutoff VarChar(29) -- AnsiString
SET     @cutoff = '2026-09-13 02:30:00.333-10:00'

SELECT
	[r].[Id]
FROM
	[OffsetTaskRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second', CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr([r].[StartDateTime], -6)
		ELSE '+00:00'
	END) || CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN Substr([r].[StartDateTime], -6)
		ELSE '+00:00'
	END) < strftime('%Y-%m-%d %H:%M:%f', @cutoff)
ORDER BY
	[r].[Id]

