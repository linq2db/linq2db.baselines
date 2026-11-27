-- SqlServer.CS.MS SqlServer.2025
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Max'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = N'Female'

INSERT INTO [SkipOnUpdateEnum]
(
	[Id],
	[Name],
	[Age],
	[Gender]
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[SkipOnUpdateEnum] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.CS.MS SqlServer.2025
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Jack'
DECLARE @Age Int -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(6) -- String
SET     @Gender = N'Male'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateEnum]
SET
	[Name] = @Name,
	[Age] = @Age,
	[Gender] = @Gender
WHERE
	[SkipOnUpdateEnum].[Id] = @Id

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[SkipOnUpdateEnum] [t]
WHERE
	[t].[Id] = 1

-- SqlServer.CS.MS SqlServer.2025
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Francine'
DECLARE @Age Int -- Int32
SET     @Age = 20
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[SkipOnUpdateEnum]
SET
	[Name] = @Name,
	[Age] = @Age
WHERE
	[SkipOnUpdateEnum].[Id] = @Id

-- SqlServer.CS.MS SqlServer.2025
SELECT TOP (1)
	[t].[Id],
	[t].[Name],
	[t].[Age],
	[t].[Gender]
FROM
	[SkipOnUpdateEnum] [t]
WHERE
	[t].[Id] = 1

