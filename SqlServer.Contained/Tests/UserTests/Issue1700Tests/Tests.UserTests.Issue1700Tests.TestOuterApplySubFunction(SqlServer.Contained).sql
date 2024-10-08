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
	(
		SELECT TOP (1)
			[subtype_1].[Description]
		FROM
			[ItemAppType] [itemtype]
				LEFT JOIN [AppType] [type_1] ON [type_1].[AppTypeId] = [itemtype].[AppTypeId]
				LEFT JOIN [AppSubType] [subtype_1] ON [subtype_1].[AppTypeId] = [type_1].[AppTypeId]
		WHERE
			[itemtype].[ItemId] = [i].[ItemId] AND [type_1].[AppTypeId] = [itemtype].[AppTypeId] AND
			([subtype_1].[AppTypeId] = [type_1].[AppTypeId] OR [subtype_1].[AppTypeId] IS NULL AND [type_1].[AppTypeId] IS NULL)
		GROUP BY
			[subtype_1].[Description],
			[subtype_1].[AppSubTypeId]
	)
FROM
	[Item] [i]
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

