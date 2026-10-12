-- SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [OffsetKeyRow]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic SQLite
SELECT CAST([Id] AS TEXT) FROM [OffsetKeyRow]

-- SQLite.Classic SQLite
DECLARE @value  -- DateTimeOffset
SET     @value = '2026-09-15 12:00:00.123+05:45'

SELECT COUNT(*) FROM [OffsetKeyRow] WHERE [Id] IN (@value)

-- SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [OffsetKeyRow] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [t1]

-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[OffsetKeyRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [OffsetKeyRow]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic SQLite
SELECT CAST([Id] AS TEXT) FROM [OffsetKeyRow]

-- SQLite.Classic SQLite
DECLARE @value  -- DateTimeOffset
SET     @value = '2026-09-15 12:00:00.123+05:45'

SELECT COUNT(*) FROM [OffsetKeyRow] WHERE [Id] IN (@value)

-- SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [OffsetKeyRow] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [t1]

-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[OffsetKeyRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Id VarChar(29) -- AnsiString
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [OffsetKeyRow]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic SQLite
SELECT CAST([Id] AS TEXT) FROM [OffsetKeyRow]

-- SQLite.Classic SQLite
DECLARE @value VarChar(29) -- AnsiString
SET     @value = '2026-09-15 12:00:00.123+05:45'

SELECT COUNT(*) FROM [OffsetKeyRow] WHERE [Id] IN (@value)

-- SQLite.Classic SQLite
DECLARE @Id VarChar(29) -- AnsiString
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [OffsetKeyRow] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [t1]

-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[OffsetKeyRow] [r]
LIMIT 2

-- SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 1

INSERT INTO [OffsetKeyRow]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

-- SQLite.Classic SQLite
SELECT CAST([Id] AS TEXT) FROM [OffsetKeyRow]

-- SQLite.Classic SQLite
DECLARE @value  -- DateTimeOffset
SET     @value = '2026-09-15 12:00:00.123+05:45'

SELECT COUNT(*) FROM [OffsetKeyRow] WHERE [Id] IN (@value)

-- SQLite.Classic SQLite
DECLARE @Id  -- DateTimeOffset
SET     @Id = '2026-09-15 12:00:00.123+05:45'
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [OffsetKeyRow] AS [t1]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Value] = @Value

-- SQLite.Classic SQLite
SELECT
	COUNT(*)
FROM
	[OffsetKeyRow] [t1]

-- SQLite.Classic SQLite
SELECT
	[r].[Value]
FROM
	[OffsetKeyRow] [r]
LIMIT 2

