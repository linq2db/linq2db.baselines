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
DECLARE @p NVarChar(1) -- String
SET     @p = '.'

SELECT
	Substr([tag].[Name], CharIndex('.', [tag].[Name]) + 1, (CASE
		WHEN 1 = 0 THEN 5
		ELSE CharIndex(@p, [tag].[Name], 6) - 1
	END - (CharIndex('.', [tag].[Name]) - 1)) - 1)
FROM
	[TagsTable] [tag]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [TagsTable]

