-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_ea4fe0b3e8b1]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_ea4fe0b3e8b1]
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
(10,'Data 10'),
(11,'Data 11'),
(12,'Data 12'),
(13,'Data 13'),
(14,'Data 14'),
(15,'Data 15'),
(16,'Data 16'),
(17,'Data 17'),
(18,'Data 18'),
(19,'Data 19')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[b].[Id]
FROM
	temp.[T_ea4fe0b3e8b1] [t1],
	temp.[T_ea4fe0b3e8b1] [b]
WHERE
	[t1].[Id] < [b].[Id]
ORDER BY
	[t1].[Id],
	[b].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_ea4fe0b3e8b1]

