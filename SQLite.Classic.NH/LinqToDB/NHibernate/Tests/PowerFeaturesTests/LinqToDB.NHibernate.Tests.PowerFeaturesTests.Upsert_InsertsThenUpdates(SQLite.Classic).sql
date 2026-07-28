-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_orgunits]
WHERE
	[l2dbnh_orgunits].[id] = 900


-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 900
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'First'

INSERT INTO [l2dbnh_orgunits] AS [t1]
(
	[id],
	[parentid],
	[name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)
ON CONFLICT ([id]) DO UPDATE SET
	[parentid] = @ParentId,
	[name] = @Name


-- SQLite.Classic SQLite
SELECT
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900
LIMIT 2


-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 900
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Second'

INSERT INTO [l2dbnh_orgunits] AS [t1]
(
	[id],
	[parentid],
	[name]
)
VALUES
(
	@Id,
	@ParentId,
	@Name
)
ON CONFLICT ([id]) DO UPDATE SET
	[parentid] = @ParentId,
	[name] = @Name


-- SQLite.Classic SQLite
SELECT
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900
LIMIT 2


-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 900
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL

INSERT INTO [l2dbnh_orgunits] AS [t1]
(
	[id],
	[parentid],
	[name]
)
VALUES
(
	@Id,
	@ParentId,
	'Inserted'
)
ON CONFLICT ([id]) DO UPDATE SET
	[parentid] = @ParentId


-- SQLite.Classic SQLite
SELECT
	[o].[id],
	[o].[parentid],
	[o].[name]
FROM
	[l2dbnh_orgunits] [o]
WHERE
	[o].[id] = 900
LIMIT 2


-- SQLite.Classic SQLite
DELETE FROM
	[l2dbnh_orgunits]
WHERE
	[l2dbnh_orgunits].[id] = 900


