-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_2b74534f24df]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_2b74534f24df]
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
			temp.[T_2b74534f24df] [t1]
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_2b74534f24df]

