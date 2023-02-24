BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2981Entity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue2981Entity]
(
	[OwnerId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @OwnerId  -- Int32
SET     @OwnerId = 1

INSERT INTO [Issue2981Entity]
(
	[OwnerId]
)
VALUES
(
	@OwnerId
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @OwnerId  -- Int32
SET     @OwnerId = 2

INSERT INTO [Issue2981Entity]
(
	[OwnerId]
)
VALUES
(
	@OwnerId
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2981OwnerEntity]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue2981OwnerEntity]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [Issue2981OwnerEntity]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[OwnerId],
	[a_Owner].[Id]
FROM
	[Issue2981Entity] [r]
		LEFT JOIN [Issue2981OwnerEntity] [a_Owner] ON [r].[OwnerId] = [a_Owner].[Id]
ORDER BY
	[r].[OwnerId]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2981OwnerEntity]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue2981Entity]

