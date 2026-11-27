-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Int -- Int32
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

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- SqlCe
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertMixed]
SET
	[Age] = @Age
WHERE
	[SkipOnInsertMixed].[Id] = @Id

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Age Int -- Int32
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

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

-- SqlCe
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Int -- Int32
SET     @Age = 25
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[SkipOnInsertMixed]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnInsertMixed].[Id] = @Id

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

