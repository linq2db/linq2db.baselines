﻿BeforeExecute
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
(2,1,1),
(3,1,2)

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
DECLARE @cond NVarChar(4000) -- String
SET     @cond = N'%En%'
DECLARE @cond_1 NVarChar(4000) -- String
SET     @cond_1 = N'%Lis%'

SELECT TOP (1)
	[x].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[User] [x_1]
				LEFT JOIN [Language] [a_Language] ON [x_1].[LanguageId] = [a_Language].[Id]
		WHERE
			[x_1].[UserGroupId] = [x].[Id] AND [a_Language].[Name] LIKE @cond ESCAPE N'~'
	),
	(
		SELECT
			COUNT(*)
		FROM
			[User] [x_2]
				LEFT JOIN [Language] [a_Language_1] ON [x_2].[LanguageId] = [a_Language_1].[Id]
		WHERE
			[x_2].[UserGroupId] = [x].[Id] AND [a_Language_1].[Name] LIKE @cond_1 ESCAPE N'~'
	)
FROM
	[UserGroup] [x]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [Language]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UserGroup]

