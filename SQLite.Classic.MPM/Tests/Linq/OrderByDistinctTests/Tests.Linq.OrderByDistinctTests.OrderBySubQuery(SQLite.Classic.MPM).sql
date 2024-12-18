BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderByDistinctData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [OrderByDistinctData]
(
	[Id]            INTEGER       NOT NULL,
	[DuplicateData] NVarChar(255)     NULL,
	[OrderData1]    INTEGER       NOT NULL,
	[OrderData2]    INTEGER       NOT NULL,

	CONSTRAINT [PK_OrderByDistinctData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [OrderByDistinctData]
(
	[Id],
	[DuplicateData],
	[OrderData1],
	[OrderData2]
)
VALUES
(1,'One',1,1),
(2,'One',1,10),
(3,'One',2,2),
(4,'One',3,3),
(5,'One',4,4),
(6,'One',5,5),
(10,'Two',1,1),
(20,'Two',1,10),
(30,'Two',2,2),
(40,'Two',3,3),
(50,'Two',4,4),
(60,'Two',5,5),
(100,'Three',1,1),
(200,'Three',1,10),
(300,'Three',2,2),
(400,'Three',3,3),
(500,'Three',4,4),
(600,'Three',5,5)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[t_1].[DuplicateData],
	(
		SELECT
			COUNT(*)
		FROM
			[OrderByDistinctData] [c_1]
		WHERE
			[c_1].[DuplicateData] = [t_1].[DuplicateData] AND [c_1].[DuplicateData] IS NOT NULL AND [t_1].[DuplicateData] IS NOT NULL OR
			[c_1].[DuplicateData] IS NULL AND [t_1].[DuplicateData] IS NULL
	)
FROM
	(
		SELECT
			[t].[Id],
			[t].[DuplicateData]
		FROM
			[OrderByDistinctData] [t]
		LIMIT @take
	) [t_1]
ORDER BY
	[t_1].[Id] DESC

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [OrderByDistinctData]

