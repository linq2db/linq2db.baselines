-- SQLite.MS SQLite
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 12:00:00'
DECLARE @ticks  -- Int64
SET     @ticks = 36000000000

INSERT INTO [OffsetTaskRow] ([Id], [StartDateTime], [PreNotification]) VALUES (1, @value, @ticks)

-- SQLite.MS SQLite
SELECT
	CASE
		WHEN Substr([r].[StartDateTime], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
			THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r].[StartDateTime], 1, Length([r].[StartDateTime]) - 6), CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || Substr([r].[StartDateTime], -6)
		ELSE strftime('%Y-%m-%d %H:%M:%f', [r].[StartDateTime], CAST(CAST([r].[PreNotification] / 10000 AS Float) / 1000 AS NVarChar(22)) || ' Second') || '+00:00'
	END
FROM
	[OffsetTaskRow] [r]
LIMIT 2

