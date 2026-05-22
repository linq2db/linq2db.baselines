-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_58527e8fedc9]
(
	[item] INTEGER NOT NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_58527e8fedc9]
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
			temp.[T_58527e8fedc9] [t1]
	) AND
	[b].[Id] IN (
		SELECT
			[t2].[item]
		FROM
			temp.[T_58527e8fedc9] [t2]
	) AND
	[a].[Id] < [b].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_58527e8fedc9]

