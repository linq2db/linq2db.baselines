BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UserIssue3128]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [UserIssue3128]
(
	[Id] INTEGER NOT NULL,

	CONSTRAINT [PK_UserIssue3128] PRIMARY KEY ([Id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UserDetailsIssue3128]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [UserDetailsIssue3128]
(
	[UserId] INTEGER NOT NULL,
	[Age]    INTEGER NOT NULL,

	CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY ([UserId])
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
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
-- SQLite.Classic SQLite
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
	@UserId,
	@Age
)

BeforeExecute
-- SQLite.Classic SQLite

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
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UserDetailsIssue3128]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [UserIssue3128]

