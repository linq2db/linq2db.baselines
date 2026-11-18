-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	@Id
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	@@IDENTITY

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[Id]
FROM
	[User] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @userId  -- Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @value  -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (@value)

