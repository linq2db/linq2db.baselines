-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_bbf3e39410fa]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_bbf3e39410fa]
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
	temp.[T_bbf3e39410fa] [t1],
	temp.[T_bbf3e39410fa] [b]
WHERE
	[t1].[item] < [b].[item]
ORDER BY
	[t1].[item],
	[b].[item]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_bbf3e39410fa]

