BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserIssue3128') IS NOT NULL)
	DROP TABLE [UserIssue3128]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserIssue3128') IS NULL)
	EXECUTE('
		CREATE TABLE [UserIssue3128]
		(
			[Id] Int NOT NULL,

			CONSTRAINT [PK_UserIssue3128] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserDetailsIssue3128') IS NOT NULL)
	DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserDetailsIssue3128') IS NULL)
	EXECUTE('
		CREATE TABLE [UserDetailsIssue3128]
		(
			[UserId] Int NOT NULL,
			[Age]    Int NOT NULL,

			CONSTRAINT [PK_UserDetailsIssue3128] PRIMARY KEY CLUSTERED ([UserId])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase

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
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserDetailsIssue3128') IS NOT NULL)
	DROP TABLE [UserDetailsIssue3128]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'UserIssue3128') IS NOT NULL)
	DROP TABLE [UserIssue3128]

