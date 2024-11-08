BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [UserIssue3128]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [UserIssue3128]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [UserDetailsIssue3128]
(
	[UserId] Int NOT NULL,
	[Age]    Int NOT NULL,

	CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb
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
-- Access.Ace.OleDb AccessOleDb

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
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb

DROP TABLE [UserIssue3128]

