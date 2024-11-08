BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4192TableNotNullable]
(
	[Name]     NVarChar(255)     NULL,
	[ParentId] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4192TableNotNullable]

