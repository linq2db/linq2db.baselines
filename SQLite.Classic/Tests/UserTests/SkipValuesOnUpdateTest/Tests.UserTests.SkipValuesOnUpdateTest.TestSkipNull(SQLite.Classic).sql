-- SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO [SkipOnUpdateNulls]
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
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateNulls]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnUpdateNulls].[Id] = @Id

-- SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.Classic SQLite
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateNulls]
SET
	[Name] = @Name
WHERE
	[SkipOnUpdateNulls].[Id] = @Id

-- SQLite.Classic SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

