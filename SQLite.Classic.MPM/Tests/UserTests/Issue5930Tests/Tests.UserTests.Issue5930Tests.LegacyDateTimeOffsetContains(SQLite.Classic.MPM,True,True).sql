-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 12:00:00.000+05:45'

INSERT INTO [OffsetContainsRow] ([Id], [Value], [Marker]) VALUES (@id, @value, 0)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 11
DECLARE @Value VarChar(25) -- AnsiString
SET     @Value = '2026-09-15 12:00:00+05:45'
DECLARE @Marker  -- Int32
SET     @Marker = 0

INSERT INTO [OffsetContainsRow]
(
	[Id],
	[Value],
	[Marker]
)
VALUES
(
	@Id,
	@Value,
	@Marker
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 2
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 12:00:00.123+05:45'

INSERT INTO [OffsetContainsRow] ([Id], [Value], [Marker]) VALUES (@id, @value, 0)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 12
DECLARE @Value VarChar(33) -- AnsiString
SET     @Value = '2026-09-15 12:00:00.1234567+05:45'
DECLARE @Marker  -- Int32
SET     @Marker = 0

INSERT INTO [OffsetContainsRow]
(
	[Id],
	[Value],
	[Marker]
)
VALUES
(
	@Id,
	@Value,
	@Marker
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 3
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 12:00:00.120+05:45'

INSERT INTO [OffsetContainsRow] ([Id], [Value], [Marker]) VALUES (@id, @value, 0)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 13
DECLARE @Value VarChar(28) -- AnsiString
SET     @Value = '2026-09-15 12:00:00.12+05:45'
DECLARE @Marker  -- Int32
SET     @Marker = 0

INSERT INTO [OffsetContainsRow]
(
	[Id],
	[Value],
	[Marker]
)
VALUES
(
	@Id,
	@Value,
	@Marker
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
INSERT INTO [OffsetContainsRow]
(
	[Id],
	[Value],
	[Marker]
)
VALUES
(21,'2026-09-15 12:00:00+05:45',0),
(22,'2026-09-15 12:00:00.1234567+05:45',0),
(23,'2026-09-15 12:00:00.12+05:45',0)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @Value  -- DateTimeOffset
SET     @Value = NULL
DECLARE @Marker  -- Int32
SET     @Marker = 0

INSERT INTO [OffsetContainsRow]
(
	[Id],
	[Value],
	[Marker]
)
VALUES
(
	@Id,
	@Value,
	@Marker
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @value NVarChar(255) -- String
SET     @value = '2026-09-15 02:15:00.000-04:00'

INSERT INTO [OffsetContainsRow] ([Id], [Value], [Marker]) VALUES (5, @value, 0)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 6
DECLARE @Value VarChar(25) -- AnsiString
SET     @Value = '2026-09-16 12:00:00+05:45'
DECLARE @Marker  -- Int32
SET     @Marker = 0

INSERT INTO [OffsetContainsRow]
(
	[Id],
	[Value],
	[Marker]
)
VALUES
(
	@Id,
	@Value,
	@Marker
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[r].[Value] as [Value_1]
		FROM
			[OffsetContainsRow] [r]
		WHERE
			[r].[Id] = 1 OR [r].[Id] = 11 OR [r].[Id] = 21
	) [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[r].[Value] as [Value_1]
		FROM
			[OffsetContainsRow] [r]
		WHERE
			[r].[Id] = 1 OR [r].[Id] = 11 OR [r].[Id] = 21
	) [t1]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
WHERE
	(strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) NOT IN (strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00+05:45'), strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.1234567+05:45'), strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.12+05:45')) AND strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IS NOT NULL)
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IS NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetContainsRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IS NOT NULL

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetContainsRow] [r]
WHERE
	1 = 0

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetContainsRow] [r]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
WHERE
	(strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) NOT IN (strftime('%Y-%m-%d %H:%M:%f', '2026-09-16 12:00:00+05:45')) OR strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IS NULL)
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[Value]) IS NOT NULL
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Marker  -- Int32
SET     @Marker = 1

UPDATE
	[OffsetContainsRow]
SET
	[Marker] = @Marker
WHERE
	(strftime('%Y-%m-%d %H:%M:%f', [OffsetContainsRow].[Value]) NOT IN (strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00+05:45'), strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.1234567+05:45'), strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.12+05:45')) AND strftime('%Y-%m-%d %H:%M:%f', [OffsetContainsRow].[Value]) IS NOT NULL)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
WHERE
	[r].[Marker] = 1
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite
DELETE FROM
	[OffsetContainsRow]
WHERE
	(strftime('%Y-%m-%d %H:%M:%f', [OffsetContainsRow].[Value]) NOT IN (strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00+05:45'), strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.1234567+05:45'), strftime('%Y-%m-%d %H:%M:%f', '2026-09-15 12:00:00.12+05:45')) AND strftime('%Y-%m-%d %H:%M:%f', [OffsetContainsRow].[Value]) IS NOT NULL)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id]
FROM
	[OffsetContainsRow] [r]
ORDER BY
	[r].[Id]

