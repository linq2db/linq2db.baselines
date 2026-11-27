-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Int -- Int32
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

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateNulls]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnUpdateNulls].[Id] = @Id

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateNulls]
SET
	[Name] = @Name
WHERE
	[SkipOnUpdateNulls].[Id] = @Id

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnUpdateNulls] [t]
WHERE
	[t].[Id] = 1

