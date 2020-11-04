BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NULL)
	CREATE TABLE [UserGroup]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [UserGroup]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NULL)
	CREATE TABLE [User]
	(
		[Id]          Int NOT NULL,
		[UserGroupId] Int NOT NULL,
		[LanguageId]  Int NOT NULL
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

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
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Language]', N'U') IS NULL)
	CREATE TABLE [Language]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

INSERT INTO [Language]
(
	[Id],
	[Name]
)
VALUES
(1,N'English'),
(2,N'French')

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @take_1 Int -- Int32
SET     @take_1 = 1

SELECT TOP (@take)
	[x_1].[Id],
	[a_FirstUserWithMultipleParameters].[Id]
FROM
	[UserGroup] [x_1]
		OUTER APPLY (
			SELECT TOP (@take_1)
				[x].[Id]
			FROM
				[User] [x]
			WHERE
				[x].[UserGroupId] = [x_1].[Id]
		) [a_FirstUserWithMultipleParameters]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[Language]', N'U') IS NOT NULL)
	DROP TABLE [Language]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[User]', N'U') IS NOT NULL)
	DROP TABLE [User]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[UserGroup]', N'U') IS NOT NULL)
	DROP TABLE [UserGroup]

