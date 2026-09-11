-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [UpsertDynamicTest] AS [t1]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	'dyn-insert'
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = 'dyn-insert'

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Name]
FROM
	[UpsertDynamicTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1

INSERT INTO [UpsertDynamicTest] AS [t1]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	'dyn-update'
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Name] = 'dyn-update'

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[Name]
FROM
	[UpsertDynamicTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

