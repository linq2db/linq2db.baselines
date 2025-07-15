BeforeExecute
-- SqlServer.2019
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

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[User] [t1]

BeforeExecute
-- SqlServer.2019
DECLARE @userId Int -- Int32
SET     @userId = 5

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

BeforeExecute
-- SqlServer.2019

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (5)

