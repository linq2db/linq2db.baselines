-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_797e62ad3a25]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_797e62ad3a25]
(
	[Id],
	[Data]
)
VALUES
(0,'Data 0'),
(1,'Data 1'),
(2,'Data 2'),
(3,'Data 3'),
(4,'Data 4'),
(5,'Data 5'),
(6,'Data 6'),
(7,'Data 7'),
(8,'Data 8'),
(9,'Data 9')

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	temp.[T_797e62ad3a25] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_797e62ad3a25]

-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_797e62ad3a25]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_797e62ad3a25]
(
	[Id],
	[Data]
)
VALUES
(0,'Data 0'),
(1,'Data 1'),
(2,'Data 2'),
(3,'Data 3'),
(4,'Data 4'),
(5,'Data 5'),
(6,'Data 6'),
(7,'Data 7'),
(8,'Data 8'),
(9,'Data 9'),
(100,'Data 100'),
(101,'Data 101')

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	temp.[T_797e62ad3a25] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_797e62ad3a25]

