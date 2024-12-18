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
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
		LEFT JOIN (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				[UserIssue3128] [t1]
		) [t2] ON 1=1
WHERE
	[t2].[COUNT_1] > 0 AND [t2].[COUNT_1] IS NOT NULL

BeforeExecute
-- SqlCe

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- SqlCe

DROP TABLE [UserIssue3128]

