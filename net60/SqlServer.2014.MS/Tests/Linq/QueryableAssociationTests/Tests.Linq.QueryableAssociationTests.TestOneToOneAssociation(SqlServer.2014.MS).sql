﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NULL)
	CREATE TABLE [UserGroup]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [UserGroup]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]          Int NOT NULL,
		[UserGroupId] Int NOT NULL,
		[LanguageId]  Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [User]
(
	[Id],
	[UserGroupId],
	[LanguageId]
)
VALUES
(1,1,1),
(2,1,1)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English'),
(2,N'French')

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1
DECLARE @take_2 Int -- Int32
SET     @take_2 = 1

SELECT TOP (@take)
	[x_2].[Id],
	[a_FirstUsersWithLanguage].[Id],
	[a_FirstUsersWithLanguage_1].[Name]
FROM
	[UserGroup] [x_2]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x].[Id]
			FROM
				[User] [x]
			WHERE
				[x].[UserGroupId] = [x_2].[Id] AND [x].[LanguageId] = 1
		) [a_FirstUsersWithLanguage]
		OUTER APPLY (
			SELECT TOP (@take_2)
				[a_Language].[Name]
			FROM
				[User] [x_1]
					LEFT JOIN [Language] [a_Language] ON [x_1].[LanguageId] = [a_Language].[Id]
			WHERE
				[x_1].[UserGroupId] = [x_2].[Id] AND [x_1].[LanguageId] = 1
		) [a_FirstUsersWithLanguage_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

