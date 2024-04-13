BeforeExecute
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
SELECT 2,1,1 UNION ALL
SELECT 3,1,2

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

SELECT TOP (1)
	[x].[Id],
	[t1].[Id]
FROM
	[UserGroup] [x]
		LEFT JOIN (
			SELECT
				[a_FirstUserWithMultipleParameters].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_FirstUserWithMultipleParameters].[UserGroupId] ORDER BY [a_FirstUserWithMultipleParameters].[UserGroupId]) as [rn],
				[a_FirstUserWithMultipleParameters].[UserGroupId]
			FROM
				[User] [a_FirstUserWithMultipleParameters]
		) [t1] ON [t1].[UserGroupId] = [x].[Id] AND [t1].[rn] <= 1

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

