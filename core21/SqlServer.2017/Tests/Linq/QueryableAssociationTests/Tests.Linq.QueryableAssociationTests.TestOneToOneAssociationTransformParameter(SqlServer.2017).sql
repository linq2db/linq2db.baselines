BeforeExecute
-- SqlServer.2017

CREATE TABLE [UserGroup]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [UserGroup]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2017

CREATE TABLE [User]
(
	[Id]          Int NOT NULL,
	[UserGroupId] Int NOT NULL,
	[LanguageId]  Int NOT NULL
)

BeforeExecute
-- SqlServer.2017

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
-- SqlServer.2017

CREATE TABLE [Language]
(
	[Id]   Int            NOT NULL,
	[Name] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2017

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English'),
(2,N'French')

BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	[x_2].[Id], 
	(
		SELECT 
			Count(*)
		FROM
			[User] [x]
				LEFT JOIN [Language] [a_Language] ON [x].[LanguageId] = [a_Language].[Id]
		WHERE
			[x].[UserGroupId] = [x_2].[Id] AND [a_Language].[Name] LIKE N'%En%'
	), 
	(
		SELECT 
			Count(*)
		FROM
			[User] [x_1]
				LEFT JOIN [Language] [a_Language_1] ON [x_1].[LanguageId] = [a_Language_1].[Id]
		WHERE
			[x_1].[UserGroupId] = [x_2].[Id] AND [a_Language_1].[Name] LIKE N'%Lis%'
	)
FROM
	[UserGroup] [x_2]

BeforeExecute
-- SqlServer.2017

DROP TABLE [Language]

BeforeExecute
-- SqlServer.2017

DROP TABLE [User]

BeforeExecute
-- SqlServer.2017

DROP TABLE [UserGroup]

