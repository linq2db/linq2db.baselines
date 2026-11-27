-- SqlServer.Contained SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'

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

-- SqlServer.Contained SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertCache] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.Contained SqlServer.2025
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'John'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnInsertCache]
SET
	[Name] = @Name
WHERE
	[SkipOnInsertCache].[Id] = @Id

-- SqlServer.Contained SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age]
FROM
	[SkipOnInsertCache] [t]
WHERE
	[t].[Id] = 1

