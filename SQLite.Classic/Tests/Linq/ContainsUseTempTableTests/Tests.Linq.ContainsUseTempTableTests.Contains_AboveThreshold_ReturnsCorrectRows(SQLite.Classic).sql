-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_044586b90a30]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_044586b90a30]
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
(100),
(101),
(102),
(103),
(104),
(105),
(106),
(107),
(108),
(109)

-- SQLite.Classic SQLite

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
			temp.[T_044586b90a30] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_044586b90a30]

