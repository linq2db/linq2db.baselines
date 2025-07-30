BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[t1].[Id]
FROM
	[User] [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @userId Int -- Int32
SET     @userId = 5

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (5)

