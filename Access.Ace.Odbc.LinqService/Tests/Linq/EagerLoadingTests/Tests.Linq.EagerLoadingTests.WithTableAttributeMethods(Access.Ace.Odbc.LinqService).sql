BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserIssue3128]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [UserIssue3128]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [UserDetailsIssue3128]
(
	[UserId] Int NOT NULL,
	[Age]    Int NOT NULL,

	CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO [UserIssue3128]
(
	[Id]
)
VALUES
(
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @UserId  -- Int32
SET     @UserId = 10
DECLARE @Age  -- Int32
SET     @Age = 18

INSERT INTO [UserDetailsIssue3128]
(
	[UserId],
	[Age]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [UserIssue3128]

