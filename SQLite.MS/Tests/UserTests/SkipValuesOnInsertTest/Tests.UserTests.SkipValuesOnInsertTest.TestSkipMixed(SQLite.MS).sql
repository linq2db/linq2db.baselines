-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Integer -- Int32
SET     @Age = 20

INSERT INTO [SkipOnInsertMixed]
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

-- SQLite.MS SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.MS SQLite
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertMixed]
SET
	[Age] = @Age
WHERE
	[SkipOnInsertMixed].[Id] = @Id

-- SQLite.MS SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1
LIMIT 1

-- SQLite.MS SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO [SkipOnInsertMixed]
(
	[Id],
	[Age]
)
VALUES
(
	@Id,
	@Age
)

-- SQLite.MS SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2
LIMIT 1

-- SQLite.MS SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Integer -- Int32
SET     @Age = 25
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	[SkipOnInsertMixed]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnInsertMixed].[Id] = @Id

-- SQLite.MS SQLite
SELECT
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2
LIMIT 1

