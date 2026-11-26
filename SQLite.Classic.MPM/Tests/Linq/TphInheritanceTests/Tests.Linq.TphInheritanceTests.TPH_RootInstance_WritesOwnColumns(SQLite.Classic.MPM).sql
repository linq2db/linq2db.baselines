-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'Base'
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [Base]
(
	[Code],
	[Id]
)
VALUES
(
	@Code,
	@Id
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'Base'
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [Base]
(
	[Code],
	[Id]
)
VALUES
(
	@Code,
	@Id
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	last_insert_rowid()

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'Base'
DECLARE @Id Integer -- Int32
SET     @Id = 3

INSERT INTO [Base] AS [t1]
(
	[Code],
	[Id]
)
VALUES
(
	@Code,
	@Id
)
ON CONFLICT ([Id]) DO UPDATE SET
	[Code] = @Code

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'

INSERT INTO [Base]
(
	[Code],
	[Id],
	[Name]
)
VALUES
(
	@Code,
	@Id,
	@Name
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'Base'
DECLARE @Id Integer -- Int32
SET     @Id = 4

UPDATE
	[Base]
SET
	[Code] = @Code
WHERE
	[Base].[Id] = @Id

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Id],
	[r].[Code],
	[r].[Name],
	[r].[Age]
FROM
	[Base] [r]
ORDER BY
	[r].[Id]

