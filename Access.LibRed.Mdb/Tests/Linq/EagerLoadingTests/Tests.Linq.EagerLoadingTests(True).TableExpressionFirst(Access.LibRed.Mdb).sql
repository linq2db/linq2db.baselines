-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 10

INSERT INTO [LoadAsTableUser]
(
	[Id]
)
VALUES
(
	@Id
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @UserId  -- Int32
SET     @UserId = 10
DECLARE @Age  -- Int32
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

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id],
	[a_Details].[UserId],
	[a_Details].[Age]
FROM
	[LoadAsTableUser] [t1]
		LEFT JOIN [LoadAsTableUserDetails] [a_Details] ON ([t1].[Id] = [a_Details].[UserId])

