-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 12:00:00.000+05:45'
DECLARE @timestamp NVarChar(255) -- String
SET     @timestamp = '2026-09-15T12:00:00.0000000'
DECLARE @date NVarChar(255) -- String
SET     @date = '2026-09-15 12:00:00'

INSERT INTO [TemporalSubqueryRow] ([Id], [Value], [NullableValue], [Timestamp], [Date], [Marker]) VALUES (1, @value, @value, @timestamp, @date, 0)

-- SQLite.Classic.MPU SQLite.Classic SQLite
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

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1])
		FROM
			(
				SELECT DISTINCT
					[r_1].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] <= 3
				ORDER BY
					[r_1].[Value]
				LIMIT 1 OFFSET 1
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
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
				UNION
				SELECT
					[r_2].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_2]
				WHERE
					[r_2].[Id] = 3
			) [t1]
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
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
				UNION ALL
				SELECT
					[r_2].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_2]
				WHERE
					[r_2].[Id] = 3
			) [t1]
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[c1])
		FROM
			(
				SELECT
					CASE
						WHEN Substr([r_1].[Value], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
							THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r_1].[Value], 1, Length([r_1].[Value]) - 6), '0 Day') || Substr([r_1].[Value], -6)
						ELSE strftime('%Y-%m-%d %H:%M:%f', [r_1].[Value], '0 Day') || '+00:00'
					END as [c1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
				UNION
				SELECT
					[r_2].[Value] as [c1]
				FROM
					[TemporalSubqueryRow] [r_2]
				WHERE
					[r_2].[Id] = 3
			) [t1]
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[c1])
		FROM
			(
				SELECT
					CASE
						WHEN Substr([r_1].[Value], -6) GLOB '[+-][0-9][0-9]:[0-9][0-9]'
							THEN strftime('%Y-%m-%d %H:%M:%f', Substr([r_1].[Value], 1, Length([r_1].[Value]) - 6), '0 Day') || Substr([r_1].[Value], -6)
						ELSE strftime('%Y-%m-%d %H:%M:%f', [r_1].[Value], '0 Day') || '+00:00'
					END as [c1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
				UNION ALL
				SELECT
					[r_2].[Value] as [c1]
				FROM
					[TemporalSubqueryRow] [r_2]
				WHERE
					[r_2].[Id] = 3
			) [t1]
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[c1])
		FROM
			(
				SELECT
					strftime('%Y-%m-%d %H:%M:%f', Trim(CAST([r_1].[Value] AS NVarChar(34)))) as [c1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = 2
				UNION
				SELECT
					[r_2].[Value] as [c1]
				FROM
					[TemporalSubqueryRow] [r_2]
				WHERE
					[r_2].[Id] = 3
			) [t1]
	)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1])
		FROM
			(
				SELECT
					[s].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [s]
				WHERE
					[s].[Id] > [r].[Id]
				ORDER BY
					[s].[Id]
				LIMIT 1
			) [t1]
	)

