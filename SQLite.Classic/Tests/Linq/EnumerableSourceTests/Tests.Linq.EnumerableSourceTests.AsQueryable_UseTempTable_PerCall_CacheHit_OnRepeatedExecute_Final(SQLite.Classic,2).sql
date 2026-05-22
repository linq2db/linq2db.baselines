-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_83b2c9e3d499]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_83b2c9e3d499]
(
	[Id],
	[Data]
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	temp.[T_83b2c9e3d499] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_83b2c9e3d499]

