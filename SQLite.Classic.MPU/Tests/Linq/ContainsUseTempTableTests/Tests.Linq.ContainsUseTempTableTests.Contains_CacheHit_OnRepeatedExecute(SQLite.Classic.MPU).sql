-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_84b9f32a4636]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[T_84b9f32a4636]
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

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
			temp.[T_84b9f32a4636] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_84b9f32a4636]

-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_84b9f32a4636]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[T_84b9f32a4636]
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

-- SQLite.Classic.MPU SQLite.Classic SQLite

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
			temp.[T_84b9f32a4636] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_84b9f32a4636]

