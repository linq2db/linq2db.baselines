BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2981Entity]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2981Entity]
(
	[OwnerId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue2981Entity]
(
	[OwnerId]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2981OwnerEntity]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue2981OwnerEntity]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [Issue2981OwnerEntity]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[r].[OwnerId],
	[a_Owner].[Id]
FROM
	[Issue2981Entity] [r]
		LEFT JOIN [Issue2981OwnerEntity] [a_Owner] ON [r].[OwnerId] = [a_Owner].[Id]
ORDER BY
	[r].[OwnerId]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2981OwnerEntity]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue2981Entity]

