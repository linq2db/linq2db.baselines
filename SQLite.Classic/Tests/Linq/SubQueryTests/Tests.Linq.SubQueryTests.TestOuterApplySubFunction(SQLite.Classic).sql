BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Item]
(
	[GroupId]     INTEGER       NOT NULL,
	[ItemId]      INTEGER       NOT NULL,
	[Description] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [ItemAppType]
(
	[AppTypeId] INTEGER NOT NULL,
	[ItemId]    INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AppType]
(
	[AppTypeId]   INTEGER   NOT NULL,
	[CreatedDate] DateTime2 NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [AppSubType]
(
	[AppTypeId]    INTEGER       NOT NULL,
	[AppSubTypeId] INTEGER       NOT NULL,
	[Description]  NVarChar(255)     NULL,
	[CreatedDate]  DateTime2     NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @groupId  -- Int32
SET     @groupId = 5

SELECT
	[i].[ItemId],
	[i].[Description],
	(
		SELECT
			COUNT(DISTINCT [type_1].[AppTypeId])
		FROM
			[ItemAppType] [t1]
				LEFT JOIN [AppType] [type_1] ON [type_1].[AppTypeId] = [t1].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_1] ON [subtype_1].[AppTypeId] = [type_1].[AppTypeId]
		WHERE
			[t1].[ItemId] = [i].[ItemId] AND [type_1].[AppTypeId] = [t1].[AppTypeId] AND
			([subtype_1].[AppTypeId] = [type_1].[AppTypeId] OR [subtype_1].[AppTypeId] IS NULL AND [type_1].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_1].[Description],
			[subtype_1].[AppSubTypeId]
		ORDER BY
			COUNT(DISTINCT [type_1].[AppTypeId]) DESC,
			MAX([subtype_1].[CreatedDate]) DESC,
			MAX([type_1].[CreatedDate]) DESC,
			MAX([type_1].[AppTypeId]) DESC
		LIMIT 1
	),
	(
		SELECT
			[subtype_2].[AppSubTypeId]
		FROM
			[ItemAppType] [t2]
				LEFT JOIN [AppType] [type_2] ON [type_2].[AppTypeId] = [t2].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_2] ON [subtype_2].[AppTypeId] = [type_2].[AppTypeId]
		WHERE
			[t2].[ItemId] = [i].[ItemId] AND [type_2].[AppTypeId] = [t2].[AppTypeId] AND
			([subtype_2].[AppTypeId] = [type_2].[AppTypeId] OR [subtype_2].[AppTypeId] IS NULL AND [type_2].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_2].[Description],
			[subtype_2].[AppSubTypeId]
		ORDER BY
			COUNT(DISTINCT [type_2].[AppTypeId]) DESC,
			MAX([subtype_2].[CreatedDate]) DESC,
			MAX([type_2].[CreatedDate]) DESC,
			MAX([type_2].[AppTypeId]) DESC
		LIMIT 1
	),
	(
		SELECT
			[subtype_3].[Description]
		FROM
			[ItemAppType] [t3]
				LEFT JOIN [AppType] [type_3] ON [type_3].[AppTypeId] = [t3].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_3] ON [subtype_3].[AppTypeId] = [type_3].[AppTypeId]
		WHERE
			[t3].[ItemId] = [i].[ItemId] AND [type_3].[AppTypeId] = [t3].[AppTypeId] AND
			([subtype_3].[AppTypeId] = [type_3].[AppTypeId] OR [subtype_3].[AppTypeId] IS NULL AND [type_3].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_3].[Description],
			[subtype_3].[AppSubTypeId]
		ORDER BY
			COUNT(DISTINCT [type_3].[AppTypeId]) DESC,
			MAX([subtype_3].[CreatedDate]) DESC,
			MAX([type_3].[CreatedDate]) DESC,
			MAX([type_3].[AppTypeId]) DESC
		LIMIT 1
	),
	(
		SELECT
			MAX([subtype_4].[CreatedDate])
		FROM
			[ItemAppType] [t4]
				LEFT JOIN [AppType] [type_4] ON [type_4].[AppTypeId] = [t4].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_4] ON [subtype_4].[AppTypeId] = [type_4].[AppTypeId]
		WHERE
			[t4].[ItemId] = [i].[ItemId] AND [type_4].[AppTypeId] = [t4].[AppTypeId] AND
			([subtype_4].[AppTypeId] = [type_4].[AppTypeId] OR [subtype_4].[AppTypeId] IS NULL AND [type_4].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_4].[Description],
			[subtype_4].[AppSubTypeId]
		ORDER BY
			COUNT(DISTINCT [type_4].[AppTypeId]) DESC,
			MAX([subtype_4].[CreatedDate]) DESC,
			MAX([type_4].[CreatedDate]) DESC,
			MAX([type_4].[AppTypeId]) DESC
		LIMIT 1
	),
	(
		SELECT
			MAX([type_5].[CreatedDate])
		FROM
			[ItemAppType] [t5]
				LEFT JOIN [AppType] [type_5] ON [type_5].[AppTypeId] = [t5].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_5] ON [subtype_5].[AppTypeId] = [type_5].[AppTypeId]
		WHERE
			[t5].[ItemId] = [i].[ItemId] AND [type_5].[AppTypeId] = [t5].[AppTypeId] AND
			([subtype_5].[AppTypeId] = [type_5].[AppTypeId] OR [subtype_5].[AppTypeId] IS NULL AND [type_5].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_5].[Description],
			[subtype_5].[AppSubTypeId]
		ORDER BY
			COUNT(DISTINCT [type_5].[AppTypeId]) DESC,
			MAX([subtype_5].[CreatedDate]) DESC,
			MAX([type_5].[CreatedDate]) DESC,
			MAX([type_5].[AppTypeId]) DESC
		LIMIT 1
	),
	(
		SELECT
			MAX([type_6].[AppTypeId])
		FROM
			[ItemAppType] [t6]
				LEFT JOIN [AppType] [type_6] ON [type_6].[AppTypeId] = [t6].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_6] ON [subtype_6].[AppTypeId] = [type_6].[AppTypeId]
		WHERE
			[t6].[ItemId] = [i].[ItemId] AND [type_6].[AppTypeId] = [t6].[AppTypeId] AND
			([subtype_6].[AppTypeId] = [type_6].[AppTypeId] OR [subtype_6].[AppTypeId] IS NULL AND [type_6].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_6].[Description],
			[subtype_6].[AppSubTypeId]
		ORDER BY
			COUNT(DISTINCT [type_6].[AppTypeId]) DESC,
			MAX([subtype_6].[CreatedDate]) DESC,
			MAX([type_6].[CreatedDate]) DESC,
			MAX([type_6].[AppTypeId]) DESC
		LIMIT 1
	),
	(
		SELECT
			COUNT(DISTINCT [subtype_7].[AppSubTypeId])
		FROM
			[ItemAppType] [t7]
				LEFT JOIN [AppType] [type_7] ON [type_7].[AppTypeId] = [t7].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_7] ON [subtype_7].[AppTypeId] = [type_7].[AppTypeId]
		WHERE
			[t7].[ItemId] = [i].[ItemId] AND [type_7].[AppTypeId] = [t7].[AppTypeId] AND
			([subtype_7].[AppTypeId] = [type_7].[AppTypeId] OR [subtype_7].[AppTypeId] IS NULL AND [type_7].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_7].[Description],
			[subtype_7].[AppSubTypeId]
		ORDER BY
			COUNT(DISTINCT [type_7].[AppTypeId]) DESC,
			MAX([subtype_7].[CreatedDate]) DESC,
			MAX([type_7].[CreatedDate]) DESC,
			MAX([type_7].[AppTypeId]) DESC
		LIMIT 1
	)
FROM
	[Item] [i]
WHERE
	[i].[GroupId] = @groupId

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Item]

