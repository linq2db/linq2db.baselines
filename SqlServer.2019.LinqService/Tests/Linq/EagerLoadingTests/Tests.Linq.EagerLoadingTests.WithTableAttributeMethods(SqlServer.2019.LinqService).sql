BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UserIssue3128]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[UserIssue3128]', N'U') IS NULL)
	CREATE TABLE [UserIssue3128]
	(
		[Id] Int NOT NULL,

		CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UserDetailsIssue3128]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[UserDetailsIssue3128]', N'U') IS NULL)
	CREATE TABLE [UserDetailsIssue3128]
	(
		[UserId] Int NOT NULL,
		[Age]    Int NOT NULL,

		CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
	)

BeforeExecute
-- SqlServer.2019
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
-- SqlServer.2019
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
-- SqlServer.2019

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			[UserIssue3128] [t1]
	) > 0

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UserDetailsIssue3128]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [UserIssue3128]

