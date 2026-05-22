-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_d18f87cac012]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[T_d18f87cac012]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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
			temp.[T_d18f87cac012] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_d18f87cac012]

-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_d18f87cac012]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[T_d18f87cac012]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite

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
			temp.[T_d18f87cac012] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_d18f87cac012]

