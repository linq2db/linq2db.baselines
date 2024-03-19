BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NULL)
	CREATE TABLE [UserGroup]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [UserGroup]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]          Int NOT NULL,
		[UserGroupId] Int NOT NULL,
		[LanguageId]  Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [User]
(
	[Id],
	[UserGroupId],
	[LanguageId]
)
SELECT 1,1,1 UNION ALL
SELECT 2,1,1 UNION ALL
SELECT 3,1,2

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [Language]
(
	[Id],
	[Name]
)
SELECT 1,N'English' UNION ALL
SELECT 2,N'French'

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	[x].[Id],
	[t2].[Id]
FROM
	[UserGroup] [x]
		LEFT JOIN (
			SELECT
				[a_FirstUsersWithLanguage].[UserGroupId],
				ROW_NUMBER() OVER (PARTITION BY [a_FirstUsersWithLanguage].[UserGroupId] ORDER BY [a_FirstUsersWithLanguage].[UserGroupId]) as [rn]
			FROM
				[User] [a_FirstUsersWithLanguage]
			WHERE
				[a_FirstUsersWithLanguage].[LanguageId] = 1
		) [t1] ON [t1].[UserGroupId] = [x].[Id] AND [t1].[rn] <= 1
		LEFT JOIN [UserGroup] [a_UserGroup] ON [t1].[UserGroupId] = [a_UserGroup].[Id]
		LEFT JOIN (
			SELECT
				[a_FirstUsersWithLanguage_1].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_FirstUsersWithLanguage_1].[UserGroupId] ORDER BY [a_FirstUsersWithLanguage_1].[UserGroupId]) as [rn],
				[a_FirstUsersWithLanguage_1].[UserGroupId]
			FROM
				[User] [a_FirstUsersWithLanguage_1]
			WHERE
				[a_FirstUsersWithLanguage_1].[LanguageId] = 2
		) [t2] ON [t2].[UserGroupId] = [a_UserGroup].[Id] AND [t2].[rn] <= 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

