-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_0b3b047c3c2f]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_0b3b047c3c2f]
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

-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[b].[Id]
FROM
	temp.[T_0b3b047c3c2f] [t1],
	temp.[T_0b3b047c3c2f] [b]
WHERE
	[t1].[Id] < [b].[Id]
ORDER BY
	[t1].[Id],
	[b].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_0b3b047c3c2f]

