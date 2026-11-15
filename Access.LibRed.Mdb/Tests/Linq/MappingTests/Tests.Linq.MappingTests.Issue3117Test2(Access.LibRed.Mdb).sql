-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @Id  -- Int32
SET     @Id = 5

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
SET     @userId = 5

SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT TOP 1
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (5)

