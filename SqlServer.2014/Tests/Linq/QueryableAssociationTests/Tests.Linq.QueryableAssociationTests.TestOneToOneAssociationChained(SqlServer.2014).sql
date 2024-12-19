BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NULL)
	CREATE TABLE [UserGroup]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [UserGroup]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]          Int NOT NULL,
		[UserGroupId] Int NOT NULL,
		[LanguageId]  Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [User]
(
	[Id],
	[UserGroupId],
	[LanguageId]
)
VALUES
(1,1,1),
(2,1,1),
(3,1,2)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English'),
(2,N'French')

BeforeExecute
-- SqlServer.2014

SELECT TOP (1)
	[x].[Id],
	[t2].[Id]
FROM
	[UserGroup] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[Id]
			FROM
				[User] [a_FirstUsersWithLanguage_1]
					LEFT JOIN [UserGroup] [a_UserGroup]
						OUTER APPLY (
							SELECT TOP (1)
								[a_FirstUsersWithLanguage].[Id]
							FROM
								[User] [a_FirstUsersWithLanguage]
							WHERE
								[a_FirstUsersWithLanguage].[UserGroupId] = [a_UserGroup].[Id] AND
								[a_FirstUsersWithLanguage].[LanguageId] = 2
						) [t1]
					ON [a_FirstUsersWithLanguage_1].[UserGroupId] = [a_UserGroup].[Id]
			WHERE
				[a_FirstUsersWithLanguage_1].[UserGroupId] = [x].[Id] AND
				[a_FirstUsersWithLanguage_1].[LanguageId] = 1
		) [t2]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

