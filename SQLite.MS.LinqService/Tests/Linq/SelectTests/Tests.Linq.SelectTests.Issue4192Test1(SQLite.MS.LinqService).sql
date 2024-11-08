BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4192TableNotNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @parentId  -- Int32
SET     @parentId = 12

SELECT
	[i].[Name],
	[i].[ParentId]
FROM
	[Issue4192TableNotNullable] [i]
WHERE
	[i].[ParentId] = @parentId

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

