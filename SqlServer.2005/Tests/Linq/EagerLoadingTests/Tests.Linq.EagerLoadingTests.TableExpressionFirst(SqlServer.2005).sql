BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserIssue3128]', N'U') IS NOT NULL)
	DROP TABLE [UserIssue3128]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserIssue3128]', N'U') IS NULL)
	CREATE TABLE [UserIssue3128]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserDetailsIssue3128]', N'U') IS NOT NULL)
	DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserDetailsIssue3128]', N'U') IS NULL)
	CREATE TABLE [UserDetailsIssue3128]
	(
		[UserId] Int NOT NULL,
		[Age]    Int NOT NULL,

		CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO [UserIssue3128]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2005
DECLARE @UserId Int -- Int32
SET     @UserId = 10
DECLARE @Age Int -- Int32
SET     @Age = 18

INSERT INTO [UserDetailsIssue3128]
(
	[UserId],
	[Age]
)
VALUES
(
	@UserId,
	@Age
)

BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[Id],
	[a_Details].[UserId],
	[a_Details].[Age]
FROM
	[UserIssue3128] [t1]
		LEFT JOIN [UserDetailsIssue3128] [a_Details] ON [t1].[Id] = [a_Details].[UserId]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserDetailsIssue3128]', N'U') IS NOT NULL)
	DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[UserIssue3128]', N'U') IS NOT NULL)
	DROP TABLE [UserIssue3128]

