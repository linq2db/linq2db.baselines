-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @date NVarChar(255) -- String
SET     @date = '2026-09-15 12:00:00.1234-05:30'
DECLARE @ticks  -- Int64
SET     @ticks = 0

INSERT INTO [OffsetTaskRow] ([Id], [StartDateTime], [PreNotification]) VALUES (@id, @date, @ticks)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2
DECLARE @date NVarChar(255) -- String
SET     @date = '2026-09-15 12:00:00.4567891-05:30'
DECLARE @ticks  -- Int64
SET     @ticks = 36000000000

INSERT INTO [OffsetTaskRow] ([Id], [StartDateTime], [PreNotification]) VALUES (@id, @date, @ticks)

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

-- SQLite.Classic.MPM SQLite.Classic SQLite
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

