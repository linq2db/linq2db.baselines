-- SqlServer.Contained SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO [LoadAsTableUser]
(
	[Id]
)
VALUES
(
	@Id
)

-- SqlServer.Contained SqlServer.2025
DECLARE @UserId Int -- Int32
SET     @UserId = 10
DECLARE @Age Int -- Int32
SET     @Age = 18

INSERT INTO [LoadAsTableUserDetails]
(
	[UserId],
	[Age]
)
VALUES
(
	@UserId,
	@Age
)

-- SqlServer.Contained SqlServer.2025
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
			[LoadAsTableUser] [t1]
	) > 0

