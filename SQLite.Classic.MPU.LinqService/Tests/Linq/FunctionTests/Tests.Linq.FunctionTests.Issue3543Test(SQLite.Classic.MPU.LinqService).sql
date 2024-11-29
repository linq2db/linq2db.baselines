BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TagsTable]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TagsTable]
(
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	Substr([tag].[Name], CharIndex('.', [tag].[Name]) + 1, ((CharIndex('.', [tag].[Name], 6) - 1) - (CharIndex('.', [tag].[Name]) - 1)) - 1)
FROM
	[TagsTable] [tag]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TagsTable]

