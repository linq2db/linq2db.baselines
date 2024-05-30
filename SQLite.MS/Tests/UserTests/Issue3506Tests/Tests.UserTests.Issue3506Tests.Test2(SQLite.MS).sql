BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [catz]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [catz]
(
	[OwnerId] INTEGER     NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [catz]
(
	[OwnerId]
)
VALUES
(1)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [owners]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [owners]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [owners]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[catz] [cat]
		INNER JOIN [owners] [owner_1] ON [cat].[OwnerId] IS NOT NULL AND [cat].[OwnerId] = [owner_1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [owners]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [catz]

