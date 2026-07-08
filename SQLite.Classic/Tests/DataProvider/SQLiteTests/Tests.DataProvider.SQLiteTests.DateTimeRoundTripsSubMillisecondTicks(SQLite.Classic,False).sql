-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DateTime VarChar(27) -- AnsiString
SET     @DateTime = '2020-02-29 17:54:55.1231234'

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DateTime VarChar(23) -- AnsiString
SET     @DateTime = '2020-02-29 17:54:55.000'

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @DateTime VarChar(23) -- AnsiString
SET     @DateTime = '2020-02-29 17:54:55.500'

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @DateTime VarChar(26) -- AnsiString
SET     @DateTime = '2020-02-29 17:54:55.000005'

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	@Id,
	@DateTime
)

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 2
LIMIT 2

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 3
LIMIT 2

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 4
LIMIT 2

