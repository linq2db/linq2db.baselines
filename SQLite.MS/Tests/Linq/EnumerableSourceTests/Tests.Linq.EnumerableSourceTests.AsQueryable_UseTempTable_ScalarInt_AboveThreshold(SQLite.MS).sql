-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_d29925324e49]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_d29925324e49]
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
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30)

-- SQLite.MS SQLite

SELECT
	[t1].[item]
FROM
	temp.[T_d29925324e49] [t1]
WHERE
	[t1].[item] > 20
ORDER BY
	[t1].[item]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_d29925324e49]

