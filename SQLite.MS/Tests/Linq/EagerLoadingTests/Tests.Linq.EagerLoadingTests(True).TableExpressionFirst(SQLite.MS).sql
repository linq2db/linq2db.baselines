-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 10

INSERT INTO [LoadAsTableUser]
(
	[Id]
)
VALUES
(
	@Id
)

-- SQLite.MS SQLite
DECLARE @UserId Integer -- Int32
SET     @UserId = 10
DECLARE @Age Integer -- Int32
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

-- SQLite.MS SQLite
SELECT
	[t1].[Id],
	[a_Details].[UserId],
	[a_Details].[Age]
FROM
	[LoadAsTableUser] [t1]
		LEFT JOIN [LoadAsTableUserDetails] [a_Details] ON [t1].[Id] = [a_Details].[UserId]

