BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	@Id
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id]
FROM
	[User] [t1]

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @userId Integer -- Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @value Integer -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (@value)

