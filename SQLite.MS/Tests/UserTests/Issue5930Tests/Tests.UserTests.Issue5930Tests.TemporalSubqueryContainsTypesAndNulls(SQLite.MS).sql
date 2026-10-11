-- SQLite.MS SQLite
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 12:00:00.000+05:45'
DECLARE @timestamp NVarChar(255) -- String
SET     @timestamp = '2026-09-15T12:00:00.0000000'
DECLARE @date NVarChar(255) -- String
SET     @date = '2026-09-15 12:00:00'

INSERT INTO [TemporalSubqueryRow] ([Id], [Value], [NullableValue], [Timestamp], [Date], [Marker]) VALUES (1, @value, @value, @timestamp, @date, 0)

-- SQLite.MS SQLite
INSERT INTO [TemporalSubqueryRow]
(
	[Id],
	[Value],
	[NullableValue],
	[Timestamp],
	[Date],
	[Marker]
)
VALUES
(2,'2026-09-15 12:00:00+05:45','2026-09-15 12:00:00+05:45','2026-09-15 12:00:00.000','2026-09-15',0),
(3,'2026-09-16 12:00:00+05:45',NULL,'2026-09-16 12:00:00.000','2026-09-16',0),
(4,'2026-09-15 02:15:00-04:00','2026-09-15 02:15:00-04:00','2026-09-15 12:00:00.000','2026-09-15',0)

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Timestamp]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[Timestamp_1])
		FROM
			(
				SELECT
					[r_1].[Timestamp] as [Timestamp_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	Date([r].[Date]) IN (
		SELECT
			Date([t1].[Date_1])
		FROM
			(
				SELECT
					[r_1].[Date] as [Date_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[NullableValue]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1])
		FROM
			(
				SELECT
					[r_1].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	[r].[NullableValue] IS NULL OR strftime('%Y-%m-%d %H:%M:%f', [r].[NullableValue]) NOT IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1])
		FROM
			(
				SELECT
					[r_1].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
			) [t1]
	)

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[NullableValue])
		FROM
			(
				SELECT
					[r_1].[NullableValue]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[TemporalSubqueryRow] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TemporalSubqueryRow] [r_1]
		WHERE
			([r_1].[Id] = 2 OR [r_1].[Id] = 3) AND (strftime('%Y-%m-%d %H:%M:%f', [r].[NullableValue]) = strftime('%Y-%m-%d %H:%M:%f', [r_1].[NullableValue]) OR [r].[NullableValue] IS NULL AND [r_1].[NullableValue] IS NULL)
	)

-- SQLite.MS SQLite
SELECT
	COUNT(*)
FROM
	[TemporalSubqueryRow] [r]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[TemporalSubqueryRow] [r_1]
		WHERE
			([r_1].[Id] = 2 OR [r_1].[Id] = 3) AND (strftime('%Y-%m-%d %H:%M:%f', [r].[NullableValue]) = strftime('%Y-%m-%d %H:%M:%f', [r_1].[NullableValue]) OR [r].[NullableValue] IS NULL AND [r_1].[NullableValue] IS NULL)
	)

