-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 5

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	@Id
)

SELECT @@IDENTITY

-- Sybase.Managed Sybase

SELECT
	[t1].[Id]
FROM
	[User] [t1]

-- Sybase.Managed Sybase
DECLARE @userId Integer -- Int32
SET     @userId = 5

SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

-- Sybase.Managed Sybase

SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (5)

