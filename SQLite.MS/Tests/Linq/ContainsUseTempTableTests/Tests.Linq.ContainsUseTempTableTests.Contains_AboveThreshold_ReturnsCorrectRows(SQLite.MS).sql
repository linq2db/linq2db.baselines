-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_95550a89e63b]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_95550a89e63b]
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

-- SQLite.MS SQLite

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
			temp.[T_95550a89e63b] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_95550a89e63b]

