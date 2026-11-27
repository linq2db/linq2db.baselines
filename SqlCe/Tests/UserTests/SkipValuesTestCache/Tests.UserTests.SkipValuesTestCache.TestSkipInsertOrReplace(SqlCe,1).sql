-- SqlCe
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertCache]
SET
	[Name] = @Name
WHERE
	[SkipOnInsertCache].[Id] = @Id

-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [SkipOnInsertCache]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertCache] [t]
WHERE
	[t].[Id] = 1

-- SqlCe
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertCache]
SET
	[Name] = @Name
WHERE
	[SkipOnInsertCache].[Id] = @Id

-- SqlCe
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertCache] [t]
WHERE
	[t].[Id] = 1

