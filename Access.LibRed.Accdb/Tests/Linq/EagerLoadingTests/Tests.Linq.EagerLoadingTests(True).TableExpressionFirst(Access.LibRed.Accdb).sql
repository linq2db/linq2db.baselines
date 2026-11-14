-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
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

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[a_Details].[UserId],
	[a_Details].[Age]
FROM
	[UserIssue3128] [t1]
		LEFT JOIN [UserDetailsIssue3128] [a_Details] ON ([t1].[Id] = [a_Details].[UserId])

