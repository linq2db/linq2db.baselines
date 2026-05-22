-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_aeaac14cee47]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_aeaac14cee47]
(
	[item]
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			temp.[T_aeaac14cee47] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_aeaac14cee47]

-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_aeaac14cee47]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_aeaac14cee47]
(
	[item]
)
VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10)

-- SQLite.Classic SQLite

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	[r].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			temp.[T_aeaac14cee47] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_aeaac14cee47]

