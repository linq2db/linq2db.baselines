BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DistinctOrderByTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DistinctOrderByTable]
(
	[Id] INTEGER       NOT NULL,
	[F1] INTEGER       NOT NULL,
	[F2] NVarChar(255)     NULL,

	CONSTRAINT [PK_DistinctOrderByTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DistinctOrderByTable]
(
	[Id],
	[F1],
	[F2]
)
VALUES
(8,8,'8'),
(3,3,'3'),
(2,2,'2'),
(6,3,'3'),
(1,3,'3'),
(5,5,'5'),
(7,2,'2'),
(4,4,'4')

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[F2]
FROM
	(
		SELECT DISTINCT
			[_].[F1],
			[_].[F2]
		FROM
			[DistinctOrderByTable] [_]
		ORDER BY
			[_].[F1] DESC
	) [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DistinctOrderByTable]

