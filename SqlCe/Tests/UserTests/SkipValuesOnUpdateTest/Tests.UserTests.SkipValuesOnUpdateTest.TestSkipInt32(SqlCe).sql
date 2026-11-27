-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Smith'
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

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
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

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateTable]
SET
	[Name] = @Name
WHERE
	[SkipOnUpdateTable].[Id] = @Id

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateTable] [t]
WHERE
	[t].[Id] = 1

