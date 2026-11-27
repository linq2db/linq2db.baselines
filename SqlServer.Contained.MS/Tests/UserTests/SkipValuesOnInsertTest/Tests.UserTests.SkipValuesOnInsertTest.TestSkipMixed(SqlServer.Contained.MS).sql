-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jason'
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.Contained.MS SqlServer.2025
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jessy'
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertMixed] [t]
WHERE
	[t].[Id] = 2

