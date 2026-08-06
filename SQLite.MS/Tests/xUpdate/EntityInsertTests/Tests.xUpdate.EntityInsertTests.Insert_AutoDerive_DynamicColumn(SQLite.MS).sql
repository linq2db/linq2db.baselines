-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(9) -- String
SET     @Name = 'auto-name'

INSERT INTO [EntityInsertDynamicTest]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Name]
FROM
	[EntityInsertDynamicTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

