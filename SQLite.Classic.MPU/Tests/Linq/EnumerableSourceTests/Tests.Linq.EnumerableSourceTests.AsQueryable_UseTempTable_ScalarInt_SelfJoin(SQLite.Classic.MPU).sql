-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_5101404cae73]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[T_5101404cae73]
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
(10),
(11),
(12),
(13),
(14),
(15)

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[item],
	[b].[item]
FROM
	temp.[T_5101404cae73] [t1],
	temp.[T_5101404cae73] [b]
WHERE
	[t1].[item] < [b].[item]
ORDER BY
	[t1].[item],
	[b].[item]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_5101404cae73]

