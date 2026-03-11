-- SqlServer.2017.MS SqlServer.2017
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

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id]
FROM
	[User] [t1]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @userId Int -- Int32
SET     @userId = 5

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (5)

