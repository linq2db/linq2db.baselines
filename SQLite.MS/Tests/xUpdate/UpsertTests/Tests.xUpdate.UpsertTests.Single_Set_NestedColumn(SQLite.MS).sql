-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Last NVarChar(9) -- String
SET     @Last = 'seed-last'

INSERT INTO [UpsertNestedTest] AS [t1]
(
	[Id],
	[First],
	[Last]
)
VALUES
(
	@Id,
	'set-first',
	@Last
)
ON CONFLICT ([Id]) DO UPDATE SET
	[First] = 'set-first',
	[Last] = @Last

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[First],
	[r].[Last]
FROM
	[UpsertNestedTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Last NVarChar(8) -- String
SET     @Last = 'upd-last'

INSERT INTO [UpsertNestedTest] AS [t1]
(
	[Id],
	[First],
	[Last]
)
VALUES
(
	@Id,
	'upd-first',
	@Last
)
ON CONFLICT ([Id]) DO UPDATE SET
	[First] = 'upd-first',
	[Last] = @Last

-- SQLite.MS SQLite
SELECT
	[r].[Id],
	[r].[First],
	[r].[Last]
FROM
	[UpsertNestedTest] [r]
WHERE
	[r].[Id] = 1
LIMIT 2

