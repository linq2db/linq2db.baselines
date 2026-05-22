-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_59598727ddf1]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[T_59598727ddf1]
(
	[Id],
	[Data]
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	temp.[T_59598727ddf1] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_59598727ddf1]

