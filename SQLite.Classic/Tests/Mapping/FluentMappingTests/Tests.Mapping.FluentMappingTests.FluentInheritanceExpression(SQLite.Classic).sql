﻿BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DescendantEntity]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DescendantEntity]
(
	[Id] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [DescendantEntity]
(
	[Id]
)
VALUES
(1),
(2)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[e].[Id]
FROM
	[DescendantEntity] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[e].[Id]
FROM
	[DescendantEntity] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [DescendantEntity]

