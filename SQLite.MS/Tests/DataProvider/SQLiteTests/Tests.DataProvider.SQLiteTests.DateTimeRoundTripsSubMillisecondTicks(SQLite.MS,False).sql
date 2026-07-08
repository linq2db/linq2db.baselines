-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @DateTime  -- DateTime
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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @DateTime  -- DateTime
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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @DateTime  -- DateTime
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

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 4
DECLARE @DateTime  -- DateTime
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

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 2
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 3
LIMIT 2

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[DateTime]
FROM
	[DateTimePrecisionTable] [r]
WHERE
	[r].[Id] = 4
LIMIT 2

