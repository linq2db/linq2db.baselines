-- SQLite.Classic SQLite
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 12:00:00.120+05:45'
DECLARE @timestamp NVarChar(255) -- String
SET     @timestamp = '2026-09-15T12:00:00.0000000'
DECLARE @date NVarChar(255) -- String
SET     @date = '2026-09-15 12:00:00'

INSERT INTO [TemporalSubqueryRow] ([Id], [Value], [NullableValue], [Timestamp], [Date], [Marker]) VALUES (1, @value, @value, @timestamp, @date, 0)

-- SQLite.Classic SQLite
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
(2,'2026-09-15 12:00:00.12+05:45','2026-09-15 12:00:00.12+05:45','2026-09-15 12:00:00.000','2026-09-15',0),
(3,'2026-09-16 12:00:00.12+05:45',NULL,'2026-09-16 12:00:00.000','2026-09-16',0),
(4,'2026-09-15 02:15:00.12-04:00','2026-09-15 02:15:00.12-04:00','2026-09-15 12:00:00.000','2026-09-15',0)

-- SQLite.Classic SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 2

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
					[r_1].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = @selectedId
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 1

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
					[r_1].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = @selectedId
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 3

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
					[r_1].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = @selectedId
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 0

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
					[r_1].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r_1]
				WHERE
					[r_1].[Id] = @selectedId
			) [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @Marker  -- Int32
SET     @Marker = 1
DECLARE @selectedId  -- Int32
SET     @selectedId = 2

UPDATE
	[TemporalSubqueryRow]
SET
	[Marker] = @Marker
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [TemporalSubqueryRow].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1])
		FROM
			(
				SELECT
					[r].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r]
				WHERE
					[r].[Id] = @selectedId
			) [t1]
	)

-- SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[TemporalSubqueryRow] [r]
WHERE
	[r].[Marker] = 1
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite
DECLARE @selectedId  -- Int32
SET     @selectedId = 2

DELETE FROM
	[TemporalSubqueryRow]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [TemporalSubqueryRow].[Value]) IN (
		SELECT
			strftime('%Y-%m-%d %H:%M:%f', [t1].[Value_1])
		FROM
			(
				SELECT
					[r].[Value] as [Value_1]
				FROM
					[TemporalSubqueryRow] [r]
				WHERE
					[r].[Id] = @selectedId
			) [t1]
	) AND
	[TemporalSubqueryRow].[Id] = 1

