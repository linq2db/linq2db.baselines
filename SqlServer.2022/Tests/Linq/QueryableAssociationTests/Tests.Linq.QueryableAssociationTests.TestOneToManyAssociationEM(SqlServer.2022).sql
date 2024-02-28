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
-- SqlServer.2022

DROP TABLE IF EXISTS [Language]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [UserGroup]

