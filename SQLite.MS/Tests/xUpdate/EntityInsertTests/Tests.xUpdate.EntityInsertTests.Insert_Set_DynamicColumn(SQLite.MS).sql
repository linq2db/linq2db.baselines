-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [EntityInsertDynamicTest]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	'dyn-insert'
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

