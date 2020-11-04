BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DescendantEntity]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [DescendantEntity]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[e].[Id]
FROM
	[DescendantEntity] [e]
WHERE
	[e].[Id] + 100 = 101

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[e].[Id]
FROM
	[DescendantEntity] [e]
WHERE
	[e].[Id] + 1000 = 1001

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [DescendantEntity]

