-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_97fd3dd7ebc6]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_97fd3dd7ebc6]
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

-- SQLite.MS SQLite

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
			temp.[T_97fd3dd7ebc6] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_97fd3dd7ebc6]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_97fd3dd7ebc6]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_97fd3dd7ebc6]
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

-- SQLite.MS SQLite

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
			temp.[T_97fd3dd7ebc6] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_97fd3dd7ebc6]

