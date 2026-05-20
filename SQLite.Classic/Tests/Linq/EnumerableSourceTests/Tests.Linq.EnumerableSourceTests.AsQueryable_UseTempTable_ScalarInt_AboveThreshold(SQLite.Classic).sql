-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_174dc9c27d1d]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_174dc9c27d1d]
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

-- SQLite.Classic SQLite

SELECT
	[t1].[item]
FROM
	temp.[T_174dc9c27d1d] [t1]
WHERE
	[t1].[item] > 20
ORDER BY
	[t1].[item]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_174dc9c27d1d]

