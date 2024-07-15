BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [UserIssue3128]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [UserIssue3128]
(
	[Id] Int NOT NULL,

	CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [UserDetailsIssue3128]
(
	[UserId] Int NOT NULL,
	[Age]    Int NOT NULL,

	CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
-- Access.Odbc AccessODBC
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
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t2].[FirstName],
	[t2].[PersonID],
	[t2].[LastName],
	[t2].[MiddleName],
	[t2].[Gender]
FROM
	(
		SELECT
			[p].[FirstName],
			[p].[PersonID],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender],
			(
				SELECT
					COUNT(*)
				FROM
					[UserIssue3128] [t1]
			) as [COUNT_1]
		FROM
			[Person] [p]
	) [t2]
WHERE
	[t2].[COUNT_1] > 0

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [UserIssue3128]

