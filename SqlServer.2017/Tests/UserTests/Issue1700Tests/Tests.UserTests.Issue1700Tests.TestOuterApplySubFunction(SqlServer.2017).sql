BeforeExecute
-- SqlServer.2017
DECLARE @groupId Int -- Int32
SET     @groupId = 5

SELECT
	[i].[ItemId],
	[i].[Description],
	[t2].[Description]
FROM
	[Item] [i]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[Description]
			FROM
				(
					SELECT
						COUNT(DISTINCT [grpby_1].[AppTypeId]) as [CountDistinctTypeId],
						MAX([grpby_1].[subtypeCreatedDate]) as [MaxSubtypeCreatedDate],
						MAX([grpby_1].[typeCreatedDate]) as [MaxTypeCreatedDate],
						MAX([grpby_1].[AppTypeId]) as [MaxTypeId],
						[grpby_1].[Description]
					FROM
						(
							SELECT
								[subtype_1].[Description],
								[subtype_1].[AppSubTypeId],
								[subtype_1].[CreatedDate] as [subtypeCreatedDate],
								[type_1].[CreatedDate] as [typeCreatedDate],
								[type_1].[AppTypeId]
							FROM
								[ItemAppType] [grpby]
									LEFT JOIN [AppType] [type_1] ON [type_1].[AppTypeId] = [grpby].[AppTypeId]
									LEFT JOIN [AppSubType] [subtype_1] ON [subtype_1].[AppTypeId] = [type_1].[AppTypeId]
							WHERE
								[grpby].[ItemId] = [i].[ItemId] AND [type_1].[AppTypeId] = [grpby].[AppTypeId] AND
								([subtype_1].[AppTypeId] = [type_1].[AppTypeId] OR [subtype_1].[AppTypeId] IS NULL AND [type_1].[AppTypeId] IS NULL)
						) [grpby_1]
					GROUP BY
						[grpby_1].[Description],
						[grpby_1].[AppSubTypeId]
				) [t1]
			ORDER BY
				[t1].[CountDistinctTypeId] DESC,
				[t1].[MaxSubtypeCreatedDate] DESC,
				[t1].[MaxTypeCreatedDate] DESC,
				[t1].[MaxTypeId] DESC
		) [t2]
WHERE
	[i].[GroupId] = @groupId

