-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_9ebe3a16b7a4]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_9ebe3a16b7a4]
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
	temp.[T_9ebe3a16b7a4] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_9ebe3a16b7a4]

