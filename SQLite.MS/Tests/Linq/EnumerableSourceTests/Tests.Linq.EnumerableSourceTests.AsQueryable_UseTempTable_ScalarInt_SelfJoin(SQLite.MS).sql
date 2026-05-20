-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_17dc37247555]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_17dc37247555]
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

-- SQLite.MS SQLite

SELECT
	[t1].[item],
	[b].[item]
FROM
	temp.[T_17dc37247555] [t1],
	temp.[T_17dc37247555] [b]
WHERE
	[t1].[item] < [b].[item]
ORDER BY
	[t1].[item],
	[b].[item]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_17dc37247555]

