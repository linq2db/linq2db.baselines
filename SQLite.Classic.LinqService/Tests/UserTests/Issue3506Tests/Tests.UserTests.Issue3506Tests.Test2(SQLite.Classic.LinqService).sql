﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [catz]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [catz]
(
	[OwnerId] INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @OwnerId  -- Int32
SET     @OwnerId = 1

INSERT INTO [catz]
(
	[OwnerId]
)
VALUES
(
	@OwnerId
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [owners]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [owners]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [owners]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[catz] [cat]
		INNER JOIN [owners] [owner_1] ON [cat].[OwnerId] IS NOT NULL AND [cat].[OwnerId] = [owner_1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [owners]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [catz]

