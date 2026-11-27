-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name UniVarChar(5) -- String
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

-- Sybase.Managed Sybase
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- Sybase.Managed Sybase
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

-- Sybase.Managed Sybase
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- Sybase.Managed Sybase
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

-- Sybase.Managed Sybase
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(5) -- String
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

-- Sybase.Managed Sybase
SELECT TOP 1
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

