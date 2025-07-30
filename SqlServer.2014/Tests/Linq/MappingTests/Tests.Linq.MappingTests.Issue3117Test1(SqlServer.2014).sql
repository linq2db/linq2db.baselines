BeforeExecute
-- SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

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
-- SqlServer.2014

SELECT
	[t1].[Id]
FROM
	[User] [t1]

BeforeExecute
-- SqlServer.2014
DECLARE @userId Int -- Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

BeforeExecute
-- SqlServer.2014
DECLARE @value Int -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT TOP (1)
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (@value)

