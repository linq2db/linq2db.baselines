-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[StartDateTime], 1, Length([r].[StartDateTime]) - 6), CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr([r].[StartDateTime], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
	END
FROM
	[OffsetTaskRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[StartDateTime], 1, Length([r].[StartDateTime]) - 6), CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr([r].[StartDateTime], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
	END
FROM
	[OffsetTaskRow] [r]
ORDER BY
	[r].[Id]

