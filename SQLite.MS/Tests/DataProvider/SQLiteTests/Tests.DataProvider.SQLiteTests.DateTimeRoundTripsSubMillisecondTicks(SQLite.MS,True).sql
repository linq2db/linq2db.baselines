-- SQLite.MS SQLite

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	1,
	'2020-02-29 17:54:55.1231234'
)

-- SQLite.MS SQLite

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	2,
	'2020-02-29 17:54:55.000'
)

-- SQLite.MS SQLite

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	3,
	'2020-02-29 17:54:55.500'
)

-- SQLite.MS SQLite

INSERT INTO [DateTimePrecisionTable]
(
	[Id],
	[DateTime]
)
VALUES
(
	4,
	'2020-02-29 17:54:55.000005'
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

