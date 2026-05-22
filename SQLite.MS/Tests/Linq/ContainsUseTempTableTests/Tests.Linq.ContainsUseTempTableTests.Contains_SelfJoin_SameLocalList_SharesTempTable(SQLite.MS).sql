-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_e112fa24b472]
(
	[item] INTEGER NOT NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_e112fa24b472]
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
	[a].[Id],
	[b].[Id]
FROM
	[ContainsTempTableTestRow] [a],
	[ContainsTempTableTestRow] [b]
WHERE
	[a].[Id] IN (
		SELECT
			[t1].[item]
		FROM
			temp.[T_e112fa24b472] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			temp.[T_e112fa24b472] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_e112fa24b472]

