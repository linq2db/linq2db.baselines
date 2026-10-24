-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT last_insert_rowid()

-- SQLite.Classic SQLite
SELECT
	[t1].[Id]
FROM
	[User] [t1]

-- SQLite.Classic SQLite
DECLARE @userId  -- Int32
SET     @userId = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @value  -- Int32
SET     @value = Tests.Linq.MappingTests+Id`1[Tests.Linq.MappingTests+User]

SELECT
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (@value)
LIMIT 1

