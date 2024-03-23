BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [A]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [A]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [B]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [B]
(
	[Id]  INTEGER NOT NULL,
	[AId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [C]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [C]
(
	[Id]  INTEGER NOT NULL,
	[BId] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [A]
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
	[t1].[Id],
	[bc].[AId],
	[bc].[Id],
	[c_1].[Id]
FROM
	[A] [t1]
		LEFT JOIN ([B] [bc]
			INNER JOIN [C] [c_1] ON [bc].[Id] = [c_1].[BId])
		ON [t1].[Id] = [bc].[AId]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [C]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [B]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [A]

