-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
SELECT last_insert_rowid()

-- SQLite.Classic SQLite
SELECT
	[t1].[Id]
FROM
	[User] [t1]

-- SQLite.Classic SQLite
DECLARE @userId  -- Int32
SET     @userId = 5

SELECT
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] = @userId
LIMIT 1

-- SQLite.Classic SQLite
SELECT
	[u].[Id]
FROM
	[User] [u]
WHERE
	[u].[Id] IN (5)
LIMIT 1

