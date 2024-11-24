BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DistinctOrderByTable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [DistinctOrderByTable]
(
	[Id] INTEGER       NOT NULL,
	[F1] INTEGER       NOT NULL,
	[F2] NVarChar(255)     NULL,
	[F3] INTEGER       NOT NULL,

	CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2],
	[F3]
)
VALUES
(8,8,'8',5),
(3,3,'3',3),
(2,2,'2',1),
(6,3,'3',4),
(1,3,'3',7),
(5,5,'5',2),
(7,2,'2',8),
(4,4,'4',6)

BeforeExecute
-- SQLite.MS SQLite

SELECT DISTINCT
	[r].[F1],
	[r].[F2]
FROM
	[DistinctOrderByTable] [r]
ORDER BY
	[r].[F1] DESC

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DistinctOrderByTable]

