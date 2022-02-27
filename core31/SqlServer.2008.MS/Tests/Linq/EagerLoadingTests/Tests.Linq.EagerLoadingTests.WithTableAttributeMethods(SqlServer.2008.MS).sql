﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [UserIssue3128]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [UserDetailsIssue3128]
(
	[UserId] Int NOT NULL,
	[Age]    Int NOT NULL,

	CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					[UserIssue3128] [t1]
			) as [ex],
			[p].[FirstName],
			[p].[PersonID],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender]
		FROM
			[Person] [p]
	) [p_1]
WHERE
	[p_1].[ex] > 0

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[UserDetailsIssue3128]', N'U') IS NOT NULL)
	DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[UserIssue3128]', N'U') IS NOT NULL)
	DROP TABLE [UserIssue3128]

