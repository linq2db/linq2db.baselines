﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NULL)
	CREATE TABLE [UserGroup]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [UserGroup]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]          Int NOT NULL,
		[UserGroupId] Int NOT NULL,
		[LanguageId]  Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [User]
(
	[Id],
	[UserGroupId],
	[LanguageId]
)
SELECT 1,1,1 UNION ALL
SELECT 2,1,1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Language]
(
	[Id],
	[Name]
)
SELECT 1,N'English' UNION ALL
SELECT 2,N'French'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[x_2].[Id],
	(
		SELECT
			Count(*)
		FROM
			[User] [x]
		WHERE
			[x].[UserGroupId] = [x_2].[Id] AND [x].[LanguageId] = 1
	),
	(
		SELECT
			Count(*)
		FROM
			[User] [x_1]
		WHERE
			[x_1].[UserGroupId] = [x_2].[Id] AND [x_1].[LanguageId] = 2
	)
FROM
	[UserGroup] [x_2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

