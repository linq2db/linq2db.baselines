BeforeExecute
-- Access AccessOleDb

DROP TABLE [UserIssue3128]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [UserIssue3128]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [UserDetailsIssue3128]
(
	[UserId] Int NOT NULL,
	[Age]    Int NOT NULL,

	CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Id Integer -- Int32
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
-- Access AccessOleDb
DECLARE @UserId Integer -- Int32
SET     @UserId = 10
DECLARE @Age Integer -- Int32
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
-- Access AccessOleDb

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
-- Access AccessOleDb

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [UserIssue3128]

