BeforeExecute
-- SqlCe

DROP TABLE [UserIssue3128]

BeforeExecute
-- SqlCe

CREATE TABLE [UserIssue3128]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_UserIssue3128] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- SqlCe

CREATE TABLE [UserDetailsIssue3128]
(
	[UserId] Int NOT NULL,
	[Age]    Int NOT NULL,

	CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY ([UserId])
)

BeforeExecute
-- SqlCe
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
-- SqlCe
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
-- SqlCe

SELECT
	[t1].[Id],
	[a_Details].[UserId] as [cond],
	[a_Details].[Age]
FROM
	[UserIssue3128] [t1]
		LEFT JOIN [UserDetailsIssue3128] [a_Details] ON [t1].[Id] = [a_Details].[UserId]

BeforeExecute
-- SqlCe

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- SqlCe

DROP TABLE [UserIssue3128]

