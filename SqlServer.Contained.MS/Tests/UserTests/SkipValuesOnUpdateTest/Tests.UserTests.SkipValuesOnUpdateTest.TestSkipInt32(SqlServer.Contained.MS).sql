-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Smith'
DECLARE @Age Int -- Int32
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

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Franki'
DECLARE @Age Int -- Int32
SET     @Age = 15
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateTable]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnUpdateTable].[Id] = @Id

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.Contained.MS SqlServer.2025
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jack'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateTable]
SET
	[Name] = @Name
WHERE
	[SkipOnUpdateTable].[Id] = @Id

-- SqlServer.Contained.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1

