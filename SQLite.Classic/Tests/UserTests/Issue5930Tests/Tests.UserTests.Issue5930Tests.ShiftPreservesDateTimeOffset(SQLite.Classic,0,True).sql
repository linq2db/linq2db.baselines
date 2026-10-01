-- SQLite.Classic SQLite
SELECT
	CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[StartDateTime], 1, Length([r].[StartDateTime]) - 6), CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr([r].[StartDateTime], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
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
	CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[StartDateTime], 1, Length([r].[StartDateTime]) - 6), CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr([r].[StartDateTime], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
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
	strftime('%Y-%m-%d %H:%M:%f', CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[StartDateTime], 1, Length([r].[StartDateTime]) - 6), CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr([r].[StartDateTime], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST(([r].[PreNotification] / 10000) * -1 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
	END) < strftime('%Y-%m-%d %H:%M:%f', @cutoff)
ORDER BY
	[r].[Id]

