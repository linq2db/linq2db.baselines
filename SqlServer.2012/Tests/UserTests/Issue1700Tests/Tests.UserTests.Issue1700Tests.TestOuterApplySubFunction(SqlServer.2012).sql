BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NULL)
	CREATE TABLE [Item]
	(
		[GroupId]     Int            NOT NULL,
		[ItemId]      Int            NOT NULL,
		[Description] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ItemAppType]', N'U') IS NOT NULL)
	DROP TABLE [ItemAppType]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ItemAppType]', N'U') IS NULL)
	CREATE TABLE [ItemAppType]
	(
		[AppTypeId] Int NOT NULL,
		[ItemId]    Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AppType]', N'U') IS NOT NULL)
	DROP TABLE [AppType]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AppType]', N'U') IS NULL)
	CREATE TABLE [AppType]
	(
		[AppTypeId]   Int       NOT NULL,
		[CreatedDate] DateTime2 NOT NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AppSubType]', N'U') IS NOT NULL)
	DROP TABLE [AppSubType]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AppSubType]', N'U') IS NULL)
	CREATE TABLE [AppSubType]
	(
		[AppTypeId]    Int            NOT NULL,
		[AppSubTypeId] Int            NOT NULL,
		[Description]  NVarChar(4000)     NULL,
		[CreatedDate]  DateTime2      NOT NULL
	)

BeforeExecute
-- SqlServer.2012
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
						[grpby].[ItemId] = [i].[ItemId] AND
						[type_1].[AppTypeId] = [grpby].[AppTypeId] AND
						[type_1].[AppTypeId] IS NOT NULL AND
						([subtype_1].[AppTypeId] = [type_1].[AppTypeId] AND [subtype_1].[AppTypeId] IS NOT NULL AND [type_1].[AppTypeId] IS NOT NULL OR [subtype_1].[AppTypeId] IS NULL AND [type_1].[AppTypeId] IS NULL)
				) [t1]
			GROUP BY
				[t1].[Description],
				[t1].[AppSubTypeId]
			ORDER BY
				COUNT(DISTINCT [t1].[AppTypeId]) DESC,
				MAX([t1].[subtypeCreatedDate]) DESC,
				MAX([t1].[typeCreatedDate]) DESC,
				MAX([t1].[AppTypeId]) DESC
		) [t2]
WHERE
	[i].[GroupId] = @groupId

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AppSubType]', N'U') IS NOT NULL)
	DROP TABLE [AppSubType]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[AppType]', N'U') IS NOT NULL)
	DROP TABLE [AppType]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[ItemAppType]', N'U') IS NOT NULL)
	DROP TABLE [ItemAppType]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Item]', N'U') IS NOT NULL)
	DROP TABLE [Item]

