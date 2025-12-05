-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 5

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	@Id
)

SELECT SCOPE_IDENTITY()

-- SqlServer.2022

SELECT
	[t1].[Id]
FROM
	[User] [t1]

-- SqlServer.2022
DECLARE @userId Int -- Int32
SET     @userId = 5

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

-- SqlServer.2022

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (5)

