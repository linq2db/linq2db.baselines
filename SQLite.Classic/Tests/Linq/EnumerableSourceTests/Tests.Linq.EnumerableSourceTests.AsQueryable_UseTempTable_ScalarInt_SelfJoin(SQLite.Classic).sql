-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_b64bf943f385]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_b64bf943f385]
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

-- SQLite.Classic SQLite

SELECT
	[t1].[item],
	[b].[item]
FROM
	temp.[T_b64bf943f385] [t1],
	temp.[T_b64bf943f385] [b]
WHERE
	[t1].[item] < [b].[item]
ORDER BY
	[t1].[item],
	[b].[item]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_b64bf943f385]

