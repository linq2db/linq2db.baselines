-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_44a82466e34e]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_44a82466e34e]
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
	temp.[T_44a82466e34e] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_44a82466e34e]

