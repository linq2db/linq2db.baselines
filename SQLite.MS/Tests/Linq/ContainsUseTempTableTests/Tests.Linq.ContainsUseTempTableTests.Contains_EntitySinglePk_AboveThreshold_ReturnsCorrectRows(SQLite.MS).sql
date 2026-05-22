-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_dbcf6b84c8d6]
(
	[Id]   INTEGER       NOT NULL,
	[Name] NVarChar(255)     NULL,
	[Tag]  NVarChar(255)     NULL,

	CONSTRAINT [PK_T_dbcf6b84c8d6] PRIMARY KEY ([Id])
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_dbcf6b84c8d6]
(
	[Id],
	[Name],
	[Tag]
)
VALUES
(1,'row1','tag1'),
(2,'row2','tag2'),
(3,'row3',NULL),
(4,'row4','tag4'),
(5,'row5','tag5'),
(6,'row6',NULL),
(7,'row7','tag7'),
(8,'row8','tag8'),
(9,'row9',NULL),
(10,'row10','tag10'),
(11,'row11','tag11'),
(12,'row12',NULL),
(13,'row13','tag13'),
(14,'row14','tag14'),
(15,'row15',NULL),
(16,'row16','tag16'),
(17,'row17','tag17'),
(18,'row18',NULL),
(19,'row19','tag19'),
(20,'row20','tag20')

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			temp.[T_dbcf6b84c8d6] [t1]
		WHERE
			[r].[Id] = [t1].[Id]
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_dbcf6b84c8d6]

