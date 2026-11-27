-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO [SkipOnUpdateTable]
(
	[Id],
	[Name],
	[Age]
)
VALUES
(
	@Id,
	@Name,
	@Age
)

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateTable]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnUpdateTable].[Id] = @Id

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateTable]
SET
	[Name] = @Name
WHERE
	[SkipOnUpdateTable].[Id] = @Id

-- SQLite.Classic.MPU SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

