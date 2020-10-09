BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

DROP TABLE [Language]

BeforeExecute
-- SqlServer.2005

DROP TABLE [User]

BeforeExecute
-- SqlServer.2005

DROP TABLE [UserGroup]

