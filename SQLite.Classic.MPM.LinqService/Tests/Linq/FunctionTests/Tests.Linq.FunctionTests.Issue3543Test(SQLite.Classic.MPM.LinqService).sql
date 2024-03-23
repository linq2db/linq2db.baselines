BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TagsTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TagsTable]
(
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p NVarChar(1) -- String
SET     @p = '.'

SELECT
	Substr([tag].[Name], CharIndex(@p, [tag].[Name]) + 1, ((CharIndex(@p, [tag].[Name], 6) - 1) - (CharIndex(@p, [tag].[Name]) - 1)) - 1)
FROM
	[TagsTable] [tag]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TagsTable]

