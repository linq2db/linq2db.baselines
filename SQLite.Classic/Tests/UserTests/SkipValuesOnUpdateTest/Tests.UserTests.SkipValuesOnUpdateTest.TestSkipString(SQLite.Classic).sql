-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer -- Int32
SET     @Age = 14

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

-- SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jacob'
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

-- SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @Age Integer -- Int32
SET     @Age = 22
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateTable]
SET
	[Age] = @Age
WHERE
	[SkipOnUpdateTable].[Id] = @Id

-- SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

