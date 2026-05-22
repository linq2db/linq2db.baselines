-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_6b7716e9ff97]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_6b7716e9ff97]
(
	[item]
)
VALUES
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
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49)

-- SQLite.MS SQLite

SELECT
	[t1].[item]
FROM
	temp.[T_6b7716e9ff97] [t1]
ORDER BY
	[t1].[item]
LIMIT 1

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_6b7716e9ff97]

