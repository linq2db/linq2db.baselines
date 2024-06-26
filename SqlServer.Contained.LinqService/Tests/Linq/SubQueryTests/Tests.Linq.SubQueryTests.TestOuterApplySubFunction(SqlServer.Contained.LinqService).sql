BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Item]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Item]', N'U') IS NULL)
	CREATE TABLE [Item]
	(
		[GroupId]     Int            NOT NULL,
		[ItemId]      Int            NOT NULL,
		[Description] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[ItemAppType]', N'U') IS NULL)
	CREATE TABLE [ItemAppType]
	(
		[AppTypeId] Int NOT NULL,
		[ItemId]    Int NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[AppType]', N'U') IS NULL)
	CREATE TABLE [AppType]
	(
		[AppTypeId]   Int       NOT NULL,
		[CreatedDate] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[AppSubType]', N'U') IS NULL)
	CREATE TABLE [AppSubType]
	(
		[AppTypeId]    Int            NOT NULL,
		[AppSubTypeId] Int            NOT NULL,
		[Description]  NVarChar(4000)     NULL,
		[CreatedDate]  DateTime2      NOT NULL
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @groupId Int -- Int32
SET     @groupId = 5

SELECT
	[i].[ItemId],
	[i].[Description],
	[t2].[CountDistinctTypeId],
	[t2].[AppSubTypeId],
	[t2].[Description],
	[t2].[MaxSubtypeCreatedDate],
	[t2].[MaxTypeCreatedDate],
	[t2].[MaxTypeId],
	[t2].[CountDistinctSubTypeId]
FROM
	[Item] [i]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[AppSubTypeId],
				[t1].[Description],
				[t1].[MAX_1] as [MaxSubtypeCreatedDate],
				[t1].[MAX_2] as [MaxTypeCreatedDate],
				[t1].[MAX_3] as [MaxTypeId],
				[t1].[CountExt] as [CountDistinctTypeId],
				[t1].[CountExt_1] as [CountDistinctSubTypeId]
			FROM
				(
					SELECT
						COUNT(DISTINCT [grpby_1].[AppTypeId]) as [CountExt],
						MAX([grpby_1].[subtypeCreatedDate]) as [MAX_1],
						MAX([grpby_1].[typeCreatedDate]) as [MAX_2],
						MAX([grpby_1].[AppTypeId]) as [MAX_3],
						[grpby_1].[AppSubTypeId],
						[grpby_1].[Description],
						COUNT(DISTINCT [grpby_1].[AppSubTypeId]) as [CountExt_1]
					FROM
						(
							SELECT
								[subtype_1].[Description],
								[subtype_1].[AppSubTypeId],
								[type_1].[AppTypeId],
								[subtype_1].[CreatedDate] as [subtypeCreatedDate],
								[type_1].[CreatedDate] as [typeCreatedDate]
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
				[t1].[CountExt] DESC,
				[t1].[MAX_1] DESC,
				[t1].[MAX_2] DESC,
				[t1].[MAX_3] DESC
		) [t2]
WHERE
	[i].[GroupId] = @groupId

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [AppSubType]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [AppType]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [ItemAppType]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Item]

