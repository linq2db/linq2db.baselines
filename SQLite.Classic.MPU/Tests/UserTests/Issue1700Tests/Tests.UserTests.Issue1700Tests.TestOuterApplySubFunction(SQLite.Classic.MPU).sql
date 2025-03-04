BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @groupId  -- Int32
SET     @groupId = 5

SELECT
	[i].[ItemId],
	[i].[Description],
	(
		SELECT
			[t1].[Description]
		FROM
			(
				SELECT
					COUNT(DISTINCT [type_1].[AppTypeId]) as [CountDistinctTypeId],
					MAX([subtype_1].[CreatedDate]) as [MaxSubtypeCreatedDate],
					MAX([type_1].[CreatedDate]) as [MaxTypeCreatedDate],
					MAX([type_1].[AppTypeId]) as [MaxTypeId],
					[subtype_1].[AppSubTypeId],
					[subtype_1].[Description],
					COUNT(DISTINCT [subtype_1].[AppSubTypeId]) as [CountDistinctSubTypeId]
				FROM
					[ItemAppType] [grpby]
						LEFT JOIN [AppType] [type_1] ON [type_1].[AppTypeId] = [grpby].[AppTypeId]
						LEFT JOIN [AppSubType] [subtype_1] ON [subtype_1].[AppTypeId] = [type_1].[AppTypeId]
				WHERE
					[grpby].[ItemId] = [i].[ItemId] AND [type_1].[AppTypeId] = [grpby].[AppTypeId] AND
					([subtype_1].[AppTypeId] = [type_1].[AppTypeId] OR [subtype_1].[AppTypeId] IS NULL AND [type_1].[AppTypeId] IS NULL)
				GROUP BY
					[subtype_1].[Description],
					[subtype_1].[AppSubTypeId]
			) [t1]
		ORDER BY
			[t1].[CountDistinctTypeId] DESC,
			[t1].[MaxSubtypeCreatedDate] DESC,
			[t1].[MaxTypeCreatedDate] DESC,
			[t1].[MaxTypeId] DESC
		LIMIT 1
	)
FROM
	[Item] [i]
WHERE
	[i].[GroupId] = @groupId

