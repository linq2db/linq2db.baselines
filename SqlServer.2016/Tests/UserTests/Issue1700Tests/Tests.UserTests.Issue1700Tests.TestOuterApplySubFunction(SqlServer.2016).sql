-- SqlServer.2016
DECLARE @groupId Int -- Int32
SET     @groupId = 5

SELECT
	[i].[ItemId],
	[i].[Description],
	[t1].[Description]
FROM
	[Item] [i]
		OUTER APPLY (
			SELECT TOP (1)
				[subtype_1].[Description]
			FROM
				[ItemAppType] [itemtype]
					INNER JOIN [AppType] [type_1] ON [type_1].[AppTypeId] = [itemtype].[AppTypeId]
					INNER JOIN [AppSubType] [subtype_1] ON [subtype_1].[AppTypeId] = [type_1].[AppTypeId]
			WHERE
				[itemtype].[ItemId] = [i].[ItemId] AND [type_1].[AppTypeId] = [itemtype].[AppTypeId] AND
				[subtype_1].[AppTypeId] = [type_1].[AppTypeId]
			GROUP BY
				[subtype_1].[Description],
				[subtype_1].[AppSubTypeId]
			ORDER BY
				COUNT(DISTINCT [type_1].[AppTypeId]) DESC,
				MAX([subtype_1].[CreatedDate]) DESC,
				MAX([type_1].[CreatedDate]) DESC,
				MAX([type_1].[AppTypeId]) DESC
		) [t1]
WHERE
	[i].[GroupId] = @groupId

