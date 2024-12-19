BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4192TableNullable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4192TableNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] INTEGER           NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @parentId  -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNullable] [i]
WHERE
	[i].[ParentId] = @parentId

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4192TableNullable]

