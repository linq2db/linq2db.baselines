-- SqlServer.2014
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

-- SqlServer.2014
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

-- SqlServer.2014
SELECT
	[t1].[Id],
	[a_Details].[UserId],
	[a_Details].[Age]
FROM
	[LoadAsTableUser] [t1]
		LEFT JOIN [LoadAsTableUserDetails] [a_Details] ON [t1].[Id] = [a_Details].[UserId]

