BeforeExecute
-- SqlServer.2012

CREATE TABLE [UserGroup]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [UserGroup]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2012

CREATE TABLE [User]
(
	[Id]          Int NOT NULL,
	[UserGroupId] Int NOT NULL,
	[LanguageId]  Int NOT NULL
)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

CREATE TABLE [Language]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2012

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English'),
(2,N'French')

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT TOP (@take)
	[x_2].[Id],
	[a_FirstUsersWithLanguage_1].[Id]
FROM
	[UserGroup] [x_2]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[a_UserGroup].[Id]
			FROM
				[User] [x_1]
					LEFT JOIN (
						SELECT
							[a_FirstUsersWithLanguage].[Id],
							[t1].[Id] as [Id_1]
						FROM
							[UserGroup] [t1]
								OUTER APPLY (
									SELECT TOP (@take_1)
										[x].[Id]
									FROM
										[User] [x]
									WHERE
										[x].[UserGroupId] = [t1].[Id] AND [x].[LanguageId] = 2
								) [a_FirstUsersWithLanguage]
					) [a_UserGroup] ON [x_1].[UserGroupId] = [a_UserGroup].[Id_1]
			WHERE
				[x_1].[UserGroupId] = [x_2].[Id] AND [x_1].[LanguageId] = 1
		) [a_FirstUsersWithLanguage_1]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Language]

BeforeExecute
-- SqlServer.2012

DROP TABLE [User]

BeforeExecute
-- SqlServer.2012

DROP TABLE [UserGroup]

