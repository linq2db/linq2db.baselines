-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT
	[t1].[Id],
	[a_Details].[UserId],
	[a_Details].[Age]
FROM
	[LoadAsTableUser] [t1]
		LEFT JOIN [LoadAsTableUserDetails] [a_Details] ON [t1].[Id] = [a_Details].[UserId]

