-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_67459d334bd5]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_67459d334bd5]
(
	[Id],
	[Data]
)
VALUES
(20,'Data 20'),
(21,'Data 21'),
(22,'Data 22')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	temp.[T_67459d334bd5] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_67459d334bd5]

