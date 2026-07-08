-- SQLite.Classic SQLite

INSERT INTO [DateTimeOffsetPrecisionTable]
(
	[Id],
	[DateTimeOffset]
)
VALUES
(
	1,
	'2020-02-29 17:09:55.1231234+00:00'
)

-- SQLite.Classic SQLite

INSERT INTO [DateTimeOffsetPrecisionTable]
(
	[Id],
	[DateTimeOffset]
)
VALUES
(
	2,
	'2020-02-29 17:09:55.000+00:00'
)

-- SQLite.Classic SQLite

INSERT INTO [DateTimeOffsetPrecisionTable]
(
	[Id],
	[DateTimeOffset]
)
VALUES
(
	3,
	'2020-02-29 17:09:55.1231234+05:00'
)

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[DateTimeOffset]
FROM
	[DateTimeOffsetPrecisionTable] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[DateTimeOffset]
FROM
	[DateTimeOffsetPrecisionTable] [r]
WHERE
	[r].[Id] = 2
LIMIT 2

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[DateTimeOffset]
FROM
	[DateTimeOffsetPrecisionTable] [r]
WHERE
	[r].[Id] = 3
LIMIT 2

