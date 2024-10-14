BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[GroupId]     INTEGER       NOT NULL,
	[ItemId]      INTEGER       NOT NULL,
	[Description] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ItemAppType]
(
	[AppTypeId] INTEGER NOT NULL,
	[ItemId]    INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AppType]
(
	[AppTypeId]   INTEGER   NOT NULL,
	[CreatedDate] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AppSubType]
(
	[AppTypeId]    INTEGER       NOT NULL,
	[AppSubTypeId] INTEGER       NOT NULL,
	[Description]  NVarChar(255)     NULL,
	[CreatedDate]  DateTime2     NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @groupId  -- Int32
SET     @groupId = 5

SELECT
	[i].[ItemId],
	[i].[Description],
	(
		SELECT
			[subtype_1].[Description]
		FROM
			[ItemAppType] [itemtype]
				LEFT JOIN [AppType] [type_1] ON [type_1].[AppTypeId] = [itemtype].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_1] ON [subtype_1].[AppTypeId] = [type_1].[AppTypeId]
		WHERE
			[itemtype].[ItemId] = [i].[ItemId] AND [type_1].[AppTypeId] = [itemtype].[AppTypeId] AND
			([subtype_1].[AppTypeId] = [type_1].[AppTypeId] OR [subtype_1].[AppTypeId] IS NULL AND [type_1].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_1].[AppSubTypeId],
			[subtype_1].[Description]
		ORDER BY
			COUNT(DISTINCT [type_1].[AppTypeId]) DESC,
			MAX([subtype_1].[CreatedDate]) DESC,
			MAX([type_1].[CreatedDate]) DESC,
			MAX([type_1].[AppTypeId]) DESC
		LIMIT 1
	)
FROM
	[Item] [i]
WHERE
	[i].[GroupId] = @groupId

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

