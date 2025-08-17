BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

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

