BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UserGroup]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NULL)
	CREATE TABLE [UserGroup]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [UserGroup]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]          Int NOT NULL,
		[UserGroupId] Int NOT NULL,
		[LanguageId]  Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

DROP TABLE IF EXISTS [Language]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English'),
(2,N'French')

BeforeExecute
-- SqlServer.2022

SELECT TOP (1)
	[x].[Id],
	[t1].[Id],
	[t1].[Name]
FROM
	[UserGroup] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_FirstUsersWithLanguage].[Id],
				[a_Language].[Name]
			FROM
				[User] [a_FirstUsersWithLanguage]
					LEFT JOIN [Language] [a_Language] ON [a_FirstUsersWithLanguage].[LanguageId] = [a_Language].[Id]
			WHERE
				[a_FirstUsersWithLanguage].[UserGroupId] = [x].[Id] AND
				[a_FirstUsersWithLanguage].[LanguageId] = 1
		) [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Language]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UserGroup]

